# frozen_string_literal: true

# Copyright 2024 Google LLC
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

# [START storage_v2_generated_StorageControl_ListFolders_sync]
require "google/cloud/storage/control/v2"

##
# Snippet for the list_folders call in the StorageControl service
#
# This snippet has been automatically generated and should be regarded as a code
# template only. It will require modifications to work:
# - It may require correct/in-range values for request initialization.
# - It may require specifying regional endpoints when creating the service
# client as shown in https://cloud.google.com/ruby/docs/reference.
#
# This is an auto-generated example demonstrating basic usage of
# Google::Cloud::Storage::Control::V2::StorageControl::Client#list_folders.
#
def list_folders
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::Storage::Control::V2::StorageControl::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::Storage::Control::V2::ListFoldersRequest.new

  # Call the list_folders method.
  result = client.list_folders request

  # The returned object is of type Gapic::PagedEnumerable. You can iterate
  # over elements, and API calls will be issued to fetch pages as needed.
  result.each do |item|
    # Each element is of type ::Google::Cloud::Storage::Control::V2::Folder.
    p item
  end
end
# [END storage_v2_generated_StorageControl_ListFolders_sync]
