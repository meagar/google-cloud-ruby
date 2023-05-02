# frozen_string_literal: true

# Copyright 2022 Google LLC
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
    module AIPlatform
      module V1
        # Indexes are deployed into it. An IndexEndpoint can have multiple
        # DeployedIndexes.
        # @!attribute [r] name
        #   @return [::String]
        #     Output only. The resource name of the IndexEndpoint.
        # @!attribute [rw] display_name
        #   @return [::String]
        #     Required. The display name of the IndexEndpoint.
        #     The name can be up to 128 characters long and can consist of any UTF-8
        #     characters.
        # @!attribute [rw] description
        #   @return [::String]
        #     The description of the IndexEndpoint.
        # @!attribute [r] deployed_indexes
        #   @return [::Array<::Google::Cloud::AIPlatform::V1::DeployedIndex>]
        #     Output only. The indexes deployed in this endpoint.
        # @!attribute [rw] etag
        #   @return [::String]
        #     Used to perform consistent read-modify-write updates. If not set, a blind
        #     "overwrite" update happens.
        # @!attribute [rw] labels
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     The labels with user-defined metadata to organize your IndexEndpoints.
        #
        #     Label keys and values can be no longer than 64 characters
        #     (Unicode codepoints), can only contain lowercase letters, numeric
        #     characters, underscores and dashes. International characters are allowed.
        #
        #     See https://goo.gl/xmQnxf for more information and examples of labels.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Timestamp when this IndexEndpoint was created.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Timestamp when this IndexEndpoint was last updated.
        #     This timestamp is not updated when the endpoint's DeployedIndexes are
        #     updated, e.g. due to updates of the original Indexes they are the
        #     deployments of.
        # @!attribute [rw] network
        #   @return [::String]
        #     Optional. The full name of the Google Compute Engine
        #     [network](https://cloud.google.com/compute/docs/networks-and-firewalls#networks)
        #     to which the IndexEndpoint should be peered.
        #
        #     Private services access must already be configured for the network. If left
        #     unspecified, the Endpoint is not peered with any network.
        #
        #     {::Google::Cloud::AIPlatform::V1::IndexEndpoint#network network} and
        #     {::Google::Cloud::AIPlatform::V1::IndexEndpoint#private_service_connect_config private_service_connect_config}
        #     are mutually exclusive.
        #
        #     [Format](https://cloud.google.com/compute/docs/reference/rest/v1/networks/insert):
        #     `projects/{project}/global/networks/{network}`.
        #     Where \\{project} is a project number, as in '12345', and \\{network} is
        #     network name.
        # @!attribute [rw] enable_private_service_connect
        #   @return [::Boolean]
        #     Optional. Deprecated: If true, expose the IndexEndpoint via private service
        #     connect.
        #
        #     Only one of the fields,
        #     {::Google::Cloud::AIPlatform::V1::IndexEndpoint#network network} or
        #     {::Google::Cloud::AIPlatform::V1::IndexEndpoint#enable_private_service_connect enable_private_service_connect},
        #     can be set.
        # @!attribute [rw] private_service_connect_config
        #   @return [::Google::Cloud::AIPlatform::V1::PrivateServiceConnectConfig]
        #     Optional. Configuration for private service connect.
        #
        #     {::Google::Cloud::AIPlatform::V1::IndexEndpoint#network network} and
        #     {::Google::Cloud::AIPlatform::V1::IndexEndpoint#private_service_connect_config private_service_connect_config}
        #     are mutually exclusive.
        # @!attribute [rw] public_endpoint_enabled
        #   @return [::Boolean]
        #     Optional. If true, the deployed index will be accessible through public
        #     endpoint.
        # @!attribute [r] public_endpoint_domain_name
        #   @return [::String]
        #     Output only. If
        #     {::Google::Cloud::AIPlatform::V1::IndexEndpoint#public_endpoint_enabled public_endpoint_enabled}
        #     is true, this field will be populated with the domain name to use for this
        #     index endpoint.
        class IndexEndpoint
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class LabelsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # A deployment of an Index. IndexEndpoints contain one or more DeployedIndexes.
        # @!attribute [rw] id
        #   @return [::String]
        #     Required. The user specified ID of the DeployedIndex.
        #     The ID can be up to 128 characters long and must start with a letter and
        #     only contain letters, numbers, and underscores.
        #     The ID must be unique within the project it is created in.
        # @!attribute [rw] index
        #   @return [::String]
        #     Required. The name of the Index this is the deployment of.
        #     We may refer to this Index as the DeployedIndex's "original" Index.
        # @!attribute [rw] display_name
        #   @return [::String]
        #     The display name of the DeployedIndex. If not provided upon creation,
        #     the Index's display_name is used.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Timestamp when the DeployedIndex was created.
        # @!attribute [r] private_endpoints
        #   @return [::Google::Cloud::AIPlatform::V1::IndexPrivateEndpoints]
        #     Output only. Provides paths for users to send requests directly to the
        #     deployed index services running on Cloud via private services access. This
        #     field is populated if
        #     {::Google::Cloud::AIPlatform::V1::IndexEndpoint#network network} is configured.
        # @!attribute [r] index_sync_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The DeployedIndex may depend on various data on its original
        #     Index. Additionally when certain changes to the original Index are being
        #     done (e.g. when what the Index contains is being changed) the DeployedIndex
        #     may be asynchronously updated in the background to reflect this changes. If
        #     this timestamp's value is at least the
        #     {::Google::Cloud::AIPlatform::V1::Index#update_time Index.update_time} of the
        #     original Index, it means that this DeployedIndex and the original Index are
        #     in sync. If this timestamp is older, then to see which updates this
        #     DeployedIndex already contains (and which not), one must
        #     [list][Operations.ListOperations] [Operations][Operation]
        #     [working][Operation.name] on the original Index. Only
        #     the successfully completed Operations with
        #     [Operations.metadata.generic_metadata.update_time]
        #     [google.cloud.aiplatform.v1.GenericOperationMetadata.update_time]
        #     equal or before this sync time are contained in this DeployedIndex.
        # @!attribute [rw] automatic_resources
        #   @return [::Google::Cloud::AIPlatform::V1::AutomaticResources]
        #     Optional. A description of resources that the DeployedIndex uses, which to
        #     large degree are decided by Vertex AI, and optionally allows only a modest
        #     additional configuration.
        #     If min_replica_count is not set, the default value is 2 (we don't provide
        #     SLA when min_replica_count=1). If max_replica_count is not set, the
        #     default value is min_replica_count. The max allowed replica count is
        #     1000.
        # @!attribute [rw] dedicated_resources
        #   @return [::Google::Cloud::AIPlatform::V1::DedicatedResources]
        #     Optional. A description of resources that are dedicated to the
        #     DeployedIndex, and that need a higher degree of manual configuration. If
        #     min_replica_count is not set, the default value is 2 (we don't provide SLA
        #     when min_replica_count=1). If max_replica_count is not set, the default
        #     value is min_replica_count. The max allowed replica count is 1000.
        #
        #     Available machine types for SMALL shard:
        #     e2-standard-2 and all machine types available for MEDIUM and LARGE shard.
        #
        #     Available machine types for MEDIUM shard:
        #     e2-standard-16 and all machine types available for LARGE shard.
        #
        #     Available machine types for LARGE shard:
        #     e2-highmem-16, n2d-standard-32.
        #
        #     n1-standard-16 and n1-standard-32 are still available, but we recommend
        #     e2-standard-16 and e2-highmem-16 for cost efficiency.
        # @!attribute [rw] enable_access_logging
        #   @return [::Boolean]
        #     Optional. If true, private endpoint's access logs are sent to Cloud
        #     Logging.
        #
        #     These logs are like standard server access logs, containing
        #     information like timestamp and latency for each MatchRequest.
        #
        #     Note that logs may incur a cost, especially if the deployed
        #     index receives a high queries per second rate (QPS).
        #     Estimate your costs before enabling this option.
        # @!attribute [rw] deployed_index_auth_config
        #   @return [::Google::Cloud::AIPlatform::V1::DeployedIndexAuthConfig]
        #     Optional. If set, the authentication is enabled for the private endpoint.
        # @!attribute [rw] reserved_ip_ranges
        #   @return [::Array<::String>]
        #     Optional. A list of reserved ip ranges under the VPC network that can be
        #     used for this DeployedIndex.
        #
        #     If set, we will deploy the index within the provided ip ranges. Otherwise,
        #     the index might be deployed to any ip ranges under the provided VPC
        #     network.
        #
        #     The value should be the name of the address
        #     (https://cloud.google.com/compute/docs/reference/rest/v1/addresses)
        #     Example: 'vertex-ai-ip-range'.
        # @!attribute [rw] deployment_group
        #   @return [::String]
        #     Optional. The deployment group can be no longer than 64 characters (eg:
        #     'test', 'prod'). If not set, we will use the 'default' deployment group.
        #
        #     Creating `deployment_groups` with `reserved_ip_ranges` is a recommended
        #     practice when the peered network has multiple peering ranges. This creates
        #     your deployments from predictable IP spaces for easier traffic
        #     administration. Also, one deployment_group (except 'default') can only be
        #     used with the same reserved_ip_ranges which means if the deployment_group
        #     has been used with reserved_ip_ranges: [a, b, c], using it with [a, b] or
        #     [d, e] is disallowed.
        #
        #     Note: we only support up to 5 deployment groups(not including 'default').
        class DeployedIndex
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Used to set up the auth on the DeployedIndex's private endpoint.
        # @!attribute [rw] auth_provider
        #   @return [::Google::Cloud::AIPlatform::V1::DeployedIndexAuthConfig::AuthProvider]
        #     Defines the authentication provider that the DeployedIndex uses.
        class DeployedIndexAuthConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Configuration for an authentication provider, including support for
          # [JSON Web Token
          # (JWT)](https://tools.ietf.org/html/draft-ietf-oauth-json-web-token-32).
          # @!attribute [rw] audiences
          #   @return [::Array<::String>]
          #     The list of JWT
          #     [audiences](https://tools.ietf.org/html/draft-ietf-oauth-json-web-token-32#section-4.1.3).
          #     that are allowed to access. A JWT containing any of these audiences will
          #     be accepted.
          # @!attribute [rw] allowed_issuers
          #   @return [::Array<::String>]
          #     A list of allowed JWT issuers. Each entry must be a valid Google
          #     service account, in the following format:
          #
          #     `service-account-name@project-id.iam.gserviceaccount.com`
          class AuthProvider
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # IndexPrivateEndpoints proto is used to provide paths for users to send
        # requests via private endpoints (e.g. private service access, private service
        # connect).
        # To send request via private service access, use match_grpc_address.
        # To send request via private service connect, use service_attachment.
        # @!attribute [r] match_grpc_address
        #   @return [::String]
        #     Output only. The ip address used to send match gRPC requests.
        # @!attribute [r] service_attachment
        #   @return [::String]
        #     Output only. The name of the service attachment resource. Populated if
        #     private service connect is enabled.
        class IndexPrivateEndpoints
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
