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

# [START securitycentermanagement_v1_generated_SecurityCenterManagement_DeleteEventThreatDetectionCustomModule_sync]
require "google/cloud/security_center_management/v1"

##
# Snippet for the delete_event_threat_detection_custom_module call in the SecurityCenterManagement service
#
# This snippet has been automatically generated and should be regarded as a code
# template only. It will require modifications to work:
# - It may require correct/in-range values for request initialization.
# - It may require specifying regional endpoints when creating the service
# client as shown in https://cloud.google.com/ruby/docs/reference.
#
# This is an auto-generated example demonstrating basic usage of
# Google::Cloud::SecurityCenterManagement::V1::SecurityCenterManagement::Client#delete_event_threat_detection_custom_module.
#
def delete_event_threat_detection_custom_module
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::SecurityCenterManagement::V1::SecurityCenterManagement::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::SecurityCenterManagement::V1::DeleteEventThreatDetectionCustomModuleRequest.new

  # Call the delete_event_threat_detection_custom_module method.
  result = client.delete_event_threat_detection_custom_module request

  # The returned object is of type Google::Protobuf::Empty.
  p result
end
# [END securitycentermanagement_v1_generated_SecurityCenterManagement_DeleteEventThreatDetectionCustomModule_sync]
