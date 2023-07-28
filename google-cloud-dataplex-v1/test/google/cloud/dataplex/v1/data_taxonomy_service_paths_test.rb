# frozen_string_literal: true

# Copyright 2023 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!

require "helper"

require "gapic/grpc/service_stub"

require "google/cloud/dataplex/v1/data_taxonomy_service"

class ::Google::Cloud::Dataplex::V1::DataTaxonomyService::ClientPathsTest < Minitest::Test
  def test_data_attribute_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Dataplex::V1::DataTaxonomyService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.data_attribute_path project: "value0", location: "value1", data_taxonomy: "value2", data_attribute_id: "value3"
      assert_equal "projects/value0/locations/value1/dataTaxonomies/value2/attributes/value3", path
    end
  end

  def test_data_attribute_binding_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Dataplex::V1::DataTaxonomyService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.data_attribute_binding_path project: "value0", location: "value1", data_attribute_binding_id: "value2"
      assert_equal "projects/value0/locations/value1/dataAttributeBindings/value2", path
    end
  end

  def test_data_taxonomy_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Dataplex::V1::DataTaxonomyService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.data_taxonomy_path project: "value0", location: "value1", data_taxonomy_id: "value2"
      assert_equal "projects/value0/locations/value1/dataTaxonomies/value2", path
    end
  end

  def test_location_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Dataplex::V1::DataTaxonomyService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.location_path project: "value0", location: "value1"
      assert_equal "projects/value0/locations/value1", path
    end
  end
end
