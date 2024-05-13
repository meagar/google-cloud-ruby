# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/aiplatform/v1/notebook_service.proto for package 'Google.Cloud.AIPlatform.V1'
# Original file comments:
# Copyright 2023 Google LLC
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
#

require 'grpc'
require 'google/cloud/aiplatform/v1/notebook_service_pb'

module Google
  module Cloud
    module AIPlatform
      module V1
        module NotebookService
          # The interface for Vertex Notebook service (a.k.a. Colab on Workbench).
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.cloud.aiplatform.v1.NotebookService'

            # Creates a NotebookRuntimeTemplate.
            rpc :CreateNotebookRuntimeTemplate, ::Google::Cloud::AIPlatform::V1::CreateNotebookRuntimeTemplateRequest, ::Google::Longrunning::Operation
            # Gets a NotebookRuntimeTemplate.
            rpc :GetNotebookRuntimeTemplate, ::Google::Cloud::AIPlatform::V1::GetNotebookRuntimeTemplateRequest, ::Google::Cloud::AIPlatform::V1::NotebookRuntimeTemplate
            # Lists NotebookRuntimeTemplates in a Location.
            rpc :ListNotebookRuntimeTemplates, ::Google::Cloud::AIPlatform::V1::ListNotebookRuntimeTemplatesRequest, ::Google::Cloud::AIPlatform::V1::ListNotebookRuntimeTemplatesResponse
            # Deletes a NotebookRuntimeTemplate.
            rpc :DeleteNotebookRuntimeTemplate, ::Google::Cloud::AIPlatform::V1::DeleteNotebookRuntimeTemplateRequest, ::Google::Longrunning::Operation
            # Assigns a NotebookRuntime to a user for a particular Notebook file. This
            # method will either returns an existing assignment or generates a new one.
            rpc :AssignNotebookRuntime, ::Google::Cloud::AIPlatform::V1::AssignNotebookRuntimeRequest, ::Google::Longrunning::Operation
            # Gets a NotebookRuntime.
            rpc :GetNotebookRuntime, ::Google::Cloud::AIPlatform::V1::GetNotebookRuntimeRequest, ::Google::Cloud::AIPlatform::V1::NotebookRuntime
            # Lists NotebookRuntimes in a Location.
            rpc :ListNotebookRuntimes, ::Google::Cloud::AIPlatform::V1::ListNotebookRuntimesRequest, ::Google::Cloud::AIPlatform::V1::ListNotebookRuntimesResponse
            # Deletes a NotebookRuntime.
            rpc :DeleteNotebookRuntime, ::Google::Cloud::AIPlatform::V1::DeleteNotebookRuntimeRequest, ::Google::Longrunning::Operation
            # Upgrades a NotebookRuntime.
            rpc :UpgradeNotebookRuntime, ::Google::Cloud::AIPlatform::V1::UpgradeNotebookRuntimeRequest, ::Google::Longrunning::Operation
            # Starts a NotebookRuntime.
            rpc :StartNotebookRuntime, ::Google::Cloud::AIPlatform::V1::StartNotebookRuntimeRequest, ::Google::Longrunning::Operation
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end
