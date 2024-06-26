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


module Google
  module Cloud
    module AppHub
      module V1
        module AppHub
          # Path helper methods for the AppHub API.
          module Paths
            ##
            # Create a fully-qualified Application resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/applications/{application}`
            #
            # @param project [String]
            # @param location [String]
            # @param application [String]
            #
            # @return [::String]
            def application_path project:, location:, application:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

              "projects/#{project}/locations/#{location}/applications/#{application}"
            end

            ##
            # Create a fully-qualified DiscoveredService resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/discoveredServices/{discovered_service}`
            #
            # @param project [String]
            # @param location [String]
            # @param discovered_service [String]
            #
            # @return [::String]
            def discovered_service_path project:, location:, discovered_service:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

              "projects/#{project}/locations/#{location}/discoveredServices/#{discovered_service}"
            end

            ##
            # Create a fully-qualified DiscoveredWorkload resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/discoveredWorkloads/{discovered_workload}`
            #
            # @param project [String]
            # @param location [String]
            # @param discovered_workload [String]
            #
            # @return [::String]
            def discovered_workload_path project:, location:, discovered_workload:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

              "projects/#{project}/locations/#{location}/discoveredWorkloads/#{discovered_workload}"
            end

            ##
            # Create a fully-qualified Location resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}`
            #
            # @param project [String]
            # @param location [String]
            #
            # @return [::String]
            def location_path project:, location:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"

              "projects/#{project}/locations/#{location}"
            end

            ##
            # Create a fully-qualified Project resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}`
            #
            # @param project [String]
            #
            # @return [::String]
            def project_path project:
              "projects/#{project}"
            end

            ##
            # Create a fully-qualified Service resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/applications/{application}/services/{service}`
            #
            # @param project [String]
            # @param location [String]
            # @param application [String]
            # @param service [String]
            #
            # @return [::String]
            def service_path project:, location:, application:, service:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"
              raise ::ArgumentError, "application cannot contain /" if application.to_s.include? "/"

              "projects/#{project}/locations/#{location}/applications/#{application}/services/#{service}"
            end

            ##
            # Create a fully-qualified ServiceProjectAttachment resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/serviceProjectAttachments/{service_project_attachment}`
            #
            # @param project [String]
            # @param location [String]
            # @param service_project_attachment [String]
            #
            # @return [::String]
            def service_project_attachment_path project:, location:, service_project_attachment:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

              "projects/#{project}/locations/#{location}/serviceProjectAttachments/#{service_project_attachment}"
            end

            ##
            # Create a fully-qualified Workload resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/applications/{application}/workloads/{workload}`
            #
            # @param project [String]
            # @param location [String]
            # @param application [String]
            # @param workload [String]
            #
            # @return [::String]
            def workload_path project:, location:, application:, workload:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"
              raise ::ArgumentError, "application cannot contain /" if application.to_s.include? "/"

              "projects/#{project}/locations/#{location}/applications/#{application}/workloads/#{workload}"
            end

            extend self
          end
        end
      end
    end
  end
end
