# Copyright 2017 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require "storage_helper"
require "net/http"

##
# These requester pays / user_project tests require a second project. If the
# configuration of the second project is not provided via the environment
# variables GCLOUD_TEST_STORAGE_REQUESTER_PAYS_PROJECT and
# GCLOUD_TEST_STORAGE_REQUESTER_PAYS_KEYFILE or
# GCLOUD_TEST_STORAGE_REQUESTER_PAYS_KEYFILE_JSON, the tests will be skipped
# by the conditional at the end of this file.
#
describe Google::Cloud::Storage::Bucket, :requester_pays, :storage do
  let(:bucket_name) { $bucket_names_2.first }
  # The original bucket belongs to a second project, with requester pays enabled.
  let :storage_2_bucket do
    storage_2.bucket(bucket_name) ||
      storage_2.create_bucket(bucket_name) do |b|
        b.requester_pays = true
      end
  end
  # The bucket used in tests is retrieved by the main project, with user_project set to bill to the main project.
  let(:bucket) { storage.bucket bucket_name, user_project: true }
  let(:user_val) { "user-blowmage@gmail.com" }
  let(:group_val) { "user-blowmage@gmail.com" }

  let(:file_path) { "acceptance/data/CloudPlatform_128px_Retina.png" }

  let(:cipher) do
    cipher = OpenSSL::Cipher.new "aes-256-cfb"
    cipher.encrypt
    cipher
  end
  let(:encryption_key) do
    cipher.random_key
  end
  let(:encryption_key_2) do
    cipher.random_key
  end

  # Pub/Sub subscription notification fixtures
  let(:project_email) { "serviceAccount:#{storage_2.project}@gs-project-accounts.iam.gserviceaccount.com" }
  let(:topic_name) { "#{prefix}_bucket_notification_topic" }
  let(:topic_name_full_path) { "//pubsub.googleapis.com/projects/#{storage.project}/topics/#{topic_name}" }
  let(:custom_attrs) { { "foo" => "bar" } }
  let(:event_types) { ["OBJECT_FINALIZE"] }
  let(:filename_prefix) { "my-prefix" }
  let(:payload) { "NONE" }

  before do
    # Provide owner access to the main project for this bucket belonging to the second project.
    #storage_2_bucket.default_acl.owner_full!
    storage_2_bucket.acl.add_owner "user-#{storage.service.credentials.issuer}"
  end

  after do
    storage_2_bucket.files(versions: true).all { |f| f.delete generation: true rescue nil }
  end

  it "raises when getting the bucket without setting user_project" do
    e = expect do
      storage.bucket bucket_name
    end.must_raise Google::Cloud::InvalidArgumentError
    e.message.must_equal "required: Bucket is requester pays bucket but no user project provided."
  end

  it "gets and updates the bucket" do
    bucket.website_main.must_be :nil?
    bucket.update do |b|
      b.website_main = "index.html"
    end
    fresh = storage.bucket bucket_name, user_project: true
    fresh.website_main.must_equal "index.html"
  end

  describe "Bucket ACL" do

    it "adds an ACL reader" do
      bucket.acl.readers.wont_include user_val
      bucket.acl.add_reader user_val
      bucket.acl.readers.must_include user_val
    end

    it "adds an ACL writer" do
      bucket.acl.writers.wont_include user_val
      bucket.acl.add_writer user_val
      bucket.acl.writers.must_include user_val
    end

    it "adds an ACL owner" do
      bucket.acl.owners.wont_include user_val
      bucket.acl.add_owner user_val
      bucket.acl.owners.must_include user_val
    end

    it "adds a default ACL reader" do
      bucket.default_acl.readers.wont_include user_val
      bucket.default_acl.add_reader user_val
      bucket.default_acl.readers.must_include user_val
    end

    it "adds an default ACL owner" do
      bucket.default_acl.owners.wont_include user_val
      bucket.default_acl.add_owner user_val
      bucket.default_acl.owners.must_include user_val
    end
  end

  it "creates a Pub/Sub subscription notification" do
    begin
      topic = Google::Cloud.pubsub.create_topic topic_name
      topic.policy do |p|
        p.add "roles/pubsub.publisher", project_email
      end

      notification = bucket.create_notification topic.name, custom_attrs: custom_attrs,
                                                            event_types: event_types,
                                                            prefix: filename_prefix,
                                                            payload: payload

      notification.wont_be_nil
      notification.id.wont_be_nil
      notification.custom_attrs.must_equal custom_attrs
      notification.event_types.must_equal event_types
      notification.prefix.must_equal filename_prefix
      notification.payload.must_equal payload
      notification.topic.must_equal topic_name_full_path

      bucket.notifications.wont_be :empty?

      fresh_notification = bucket.notification notification.id
      fresh_notification.wont_be_nil
      fresh_notification.id.wont_be_nil
      fresh_notification.custom_attrs.must_equal custom_attrs
      fresh_notification.event_types.must_equal event_types
      fresh_notification.prefix.must_equal filename_prefix
      fresh_notification.payload.must_equal payload
      fresh_notification.topic.must_equal topic_name_full_path


      fresh_notification.delete
    ensure
      bucket.notifications.map(&:delete)
      post_topic = Google::Cloud.pubsub.topic "#{prefix}_bucket_notification_topic"
      post_topic.delete if post_topic # Assume no subscriptions to clean up.
    end
  end

  it "sets and updates cors rules" do
    bucket.cors do |c|
      c.add_rule ["http://example.org", "https://example.org"],
                 "*",
                 headers: ["X-My-Custom-Header"],
                 max_age: 300
    end

    bucket.cors.wont_be :empty?
    bucket.cors.last.origin.must_equal ["http://example.org", "https://example.org"]
    bucket.cors.last.methods.must_equal ["*"]
    bucket.cors.last.headers.must_equal ["X-My-Custom-Header"]
    bucket.cors.last.max_age.must_equal 300

    bucket.reload!

    bucket.cors do |c|
      c.last.origin << "https://example.com"
      c.last.methods = ["PUT"]
      c.last.headers << "X-Another-Custom-Header"
      c.last.max_age = 600
    end

    bucket.reload!

    bucket.cors.last.origin.must_equal ["http://example.org", "https://example.org", "https://example.com"]
    bucket.cors.last.methods.must_equal ["PUT"]
    bucket.cors.last.headers.must_equal ["X-My-Custom-Header", "X-Another-Custom-Header"]
    bucket.cors.last.max_age.must_equal 600
  end

  describe "IAM Policies and Permissions" do

    it "allows policy to be updated on a bucket" do
      # Check permissions first
      roles = ["storage.buckets.getIamPolicy", "storage.buckets.setIamPolicy"]
      permissions = bucket.test_permissions roles
      skip "Don't have permissions to get/set bucket's policy" unless permissions == roles

      bucket.policy.must_be_kind_of Google::Cloud::Storage::Policy

      # We need a valid service account in order to update the policy
      service_account = storage.service.credentials.client.issuer
      service_account.wont_be :nil?
      role = "roles/storage.objectCreator"
      member = "serviceAccount:#{service_account}"
      bucket.policy do |p|
        p.add role, member
      end

      bucket.policy.role(role).must_include member
    end

    it "allows permissions to be tested on a bucket" do
      roles = ["storage.buckets.get"]
      permissions = bucket.test_permissions roles
      permissions.must_equal roles
    end
  end

  it "creates and lists and gets and downloads and updates and deletes a file" do
    original = File.new file_path

    # create
    uploaded = bucket.create_file original, "CloudLogo.png",
                                  cache_control: "public, max-age=3600",
                                  metadata: { title: "Logo Image" }
    bucket.create_file original, "CloudLogo-2.png" # second file for pagination

    # list
    uploaded.cache_control.must_equal "public, max-age=3600"
    uploaded.metadata["title"].must_equal "Logo Image"
    first_files = bucket.files(max: 1)
    first_files.wont_be :empty?
    first_files.next?.must_equal true
    # pagination
    second_files = first_files.next
    second_files.wont_be :empty?

    # get
    bucket.file(uploaded.name).wont_be :nil?

    # download
    Tempfile.open ["google-cloud", ".png"] do |tmpfile|
      tmpfile.binmode
      downloaded = uploaded.download tmpfile

      downloaded.size.must_equal original.size
      File.read(downloaded.path, mode: "rb").must_equal File.read(original.path, mode: "rb")
    end

    # update
    uploaded.update do |f|
      f.cache_control = "private, max-age=0, no-cache"
      f.metadata["title"] = "Logo Image II"
    end
    uploaded.reload!
    uploaded.cache_control.must_equal "private, max-age=0, no-cache"
    uploaded.metadata["title"].must_equal "Logo Image II"

    # delete
    uploaded.delete
  end

  it "should copy an existing file" do
    uploaded = bucket.create_file file_path, "CloudLogo"
    copied = try_with_backoff "copying existing file" do
      uploaded.copy "CloudLogoCopy"
    end

    uploaded.name.must_equal "CloudLogo"
    copied.name.must_equal "CloudLogoCopy"
    copied.size.must_equal uploaded.size

    Tempfile.open ["CloudLogo", ".png"] do |tmpfile1|
      tmpfile1.binmode
      Tempfile.open ["CloudLogoCopy", ".png"] do |tmpfile2|
        tmpfile2.binmode
        downloaded1 = uploaded.download tmpfile1
        downloaded2 = copied.download tmpfile2
        downloaded1.size.must_equal downloaded2.size

        File.read(downloaded1.path, mode: "rb").must_equal File.read(downloaded2.path, mode: "rb")
      end
    end

    uploaded.delete
    copied.delete
  end

  describe "File ACL" do

    it "adds and deletes a reader" do
      file = bucket.create_file file_path, "ReaderTest.png"
      file.acl.add_reader group_val
      file.acl.readers.must_include group_val
      file.acl.refresh!
      file.acl.readers.must_include group_val
      file.refresh!
      file.acl.readers.must_include group_val
      file.acl.delete group_val
      file.acl.readers.wont_include group_val
    end

    it "adds an owner" do
      file = bucket.create_file file_path, "OwnerTest.png"
      file.acl.add_owner group_val
    end

    it "sets predefined ACL rules" do
      file = bucket.create_file file_path, "PredefinedTest.png"
      file.acl.public!
    end
  end
end if $storage_2
