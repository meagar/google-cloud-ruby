# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/networkconnectivity/v1/policy_based_routing.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/networkconnectivity/v1/common_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n>google/cloud/networkconnectivity/v1/policy_based_routing.proto\x12#google.cloud.networkconnectivity.v1\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x30google/cloud/networkconnectivity/v1/common.proto\x1a#google/longrunning/operations.proto\x1a\x1bgoogle/protobuf/empty.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\xe8\x0e\n\x10PolicyBasedRoute\x12\x65\n\x0fvirtual_machine\x18\x12 \x01(\x0b\x32\x44.google.cloud.networkconnectivity.v1.PolicyBasedRoute.VirtualMachineB\x04\xe2\x41\x01\x01H\x00\x12u\n\x17interconnect_attachment\x18\t \x01(\x0b\x32L.google.cloud.networkconnectivity.v1.PolicyBasedRoute.InterconnectAttachmentB\x04\xe2\x41\x01\x01H\x00\x12\x1f\n\x0fnext_hop_ilb_ip\x18\x0c \x01(\tB\x04\xe2\x41\x01\x01H\x01\x12h\n\x15next_hop_other_routes\x18\x15 \x01(\x0e\x32\x41.google.cloud.networkconnectivity.v1.PolicyBasedRoute.OtherRoutesB\x04\xe2\x41\x01\x01H\x01\x12\x12\n\x04name\x18\x01 \x01(\tB\x04\xe2\x41\x01\x05\x12\x35\n\x0b\x63reate_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x04\xe2\x41\x01\x03\x12\x35\n\x0bupdate_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x04\xe2\x41\x01\x03\x12Q\n\x06labels\x18\x04 \x03(\x0b\x32\x41.google.cloud.networkconnectivity.v1.PolicyBasedRoute.LabelsEntry\x12\x19\n\x0b\x64\x65scription\x18\x05 \x01(\tB\x04\xe2\x41\x01\x01\x12\x38\n\x07network\x18\x06 \x01(\tB\'\xe2\x41\x01\x02\xfa\x41 \n\x1e\x63ompute.googleapis.com/Network\x12R\n\x06\x66ilter\x18\n \x01(\x0b\x32<.google.cloud.networkconnectivity.v1.PolicyBasedRoute.FilterB\x04\xe2\x41\x01\x02\x12\x16\n\x08priority\x18\x0b \x01(\x05\x42\x04\xe2\x41\x01\x01\x12V\n\x08warnings\x18\x0e \x03(\x0b\x32>.google.cloud.networkconnectivity.v1.PolicyBasedRoute.WarningsB\x04\xe2\x41\x01\x03\x12\x17\n\tself_link\x18\x0f \x01(\tB\x04\xe2\x41\x01\x03\x12\x12\n\x04kind\x18\x10 \x01(\tB\x04\xe2\x41\x01\x03\x1a$\n\x0eVirtualMachine\x12\x12\n\x04tags\x18\x01 \x03(\tB\x04\xe2\x41\x01\x01\x1a.\n\x16InterconnectAttachment\x12\x14\n\x06region\x18\x01 \x01(\tB\x04\xe2\x41\x01\x01\x1a\x83\x02\n\x06\x46ilter\x12\x19\n\x0bip_protocol\x18\x01 \x01(\tB\x04\xe2\x41\x01\x01\x12\x17\n\tsrc_range\x18\x02 \x01(\tB\x04\xe2\x41\x01\x01\x12\x18\n\ndest_range\x18\x03 \x01(\tB\x04\xe2\x41\x01\x01\x12l\n\x10protocol_version\x18\x06 \x01(\x0e\x32L.google.cloud.networkconnectivity.v1.PolicyBasedRoute.Filter.ProtocolVersionB\x04\xe2\x41\x01\x02\"=\n\x0fProtocolVersion\x12 \n\x1cPROTOCOL_VERSION_UNSPECIFIED\x10\x00\x12\x08\n\x04IPV4\x10\x01\x1a\xe4\x02\n\x08Warnings\x12W\n\x04\x63ode\x18\x01 \x01(\x0e\x32\x43.google.cloud.networkconnectivity.v1.PolicyBasedRoute.Warnings.CodeB\x04\xe2\x41\x01\x03\x12\\\n\x04\x64\x61ta\x18\x02 \x03(\x0b\x32H.google.cloud.networkconnectivity.v1.PolicyBasedRoute.Warnings.DataEntryB\x04\xe2\x41\x01\x03\x12\x1d\n\x0fwarning_message\x18\x03 \x01(\tB\x04\xe2\x41\x01\x03\x1a+\n\tDataEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"U\n\x04\x43ode\x12\x17\n\x13WARNING_UNSPECIFIED\x10\x00\x12\x17\n\x13RESOURCE_NOT_ACTIVE\x10\x01\x12\x1b\n\x17RESOURCE_BEING_MODIFIED\x10\x02\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"@\n\x0bOtherRoutes\x12\x1c\n\x18OTHER_ROUTES_UNSPECIFIED\x10\x00\x12\x13\n\x0f\x44\x45\x46\x41ULT_ROUTING\x10\x01:\x85\x01\xea\x41\x81\x01\n3networkconnectivity.googleapis.com/PolicyBasedRoute\x12Jprojects/{project}/locations/global/PolicyBasedRoutes/{policy_based_route}B\x08\n\x06targetB\n\n\x08next_hop\"\xa3\x01\n\x1cListPolicyBasedRoutesRequest\x12:\n\x06parent\x18\x01 \x01(\tB*\xe2\x41\x01\x02\xfa\x41#\n!locations.googleapis.com/Location\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\x12\x0e\n\x06\x66ilter\x18\x04 \x01(\t\x12\x10\n\x08order_by\x18\x05 \x01(\t\"\xa1\x01\n\x1dListPolicyBasedRoutesResponse\x12R\n\x13policy_based_routes\x18\x01 \x03(\x0b\x32\x35.google.cloud.networkconnectivity.v1.PolicyBasedRoute\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\x12\x13\n\x0bunreachable\x18\x03 \x03(\t\"h\n\x1aGetPolicyBasedRouteRequest\x12J\n\x04name\x18\x01 \x01(\tB<\xe2\x41\x01\x02\xfa\x41\x35\n3networkconnectivity.googleapis.com/PolicyBasedRoute\"\xf3\x01\n\x1d\x43reatePolicyBasedRouteRequest\x12:\n\x06parent\x18\x01 \x01(\tB*\xe2\x41\x01\x02\xfa\x41#\n!locations.googleapis.com/Location\x12#\n\x15policy_based_route_id\x18\x02 \x01(\tB\x04\xe2\x41\x01\x02\x12W\n\x12policy_based_route\x18\x03 \x01(\x0b\x32\x35.google.cloud.networkconnectivity.v1.PolicyBasedRouteB\x04\xe2\x41\x01\x02\x12\x18\n\nrequest_id\x18\x04 \x01(\tB\x04\xe2\x41\x01\x01\"\x85\x01\n\x1d\x44\x65letePolicyBasedRouteRequest\x12J\n\x04name\x18\x01 \x01(\tB<\xe2\x41\x01\x02\xfa\x41\x35\n3networkconnectivity.googleapis.com/PolicyBasedRoute\x12\x18\n\nrequest_id\x18\x02 \x01(\tB\x04\xe2\x41\x01\x01\x32\xe3\x08\n\x19PolicyBasedRoutingService\x12\xeb\x01\n\x15ListPolicyBasedRoutes\x12\x41.google.cloud.networkconnectivity.v1.ListPolicyBasedRoutesRequest\x1a\x42.google.cloud.networkconnectivity.v1.ListPolicyBasedRoutesResponse\"K\xda\x41\x06parent\x82\xd3\xe4\x93\x02<\x12:/v1/{parent=projects/*/locations/global}/policyBasedRoutes\x12\xd8\x01\n\x13GetPolicyBasedRoute\x12?.google.cloud.networkconnectivity.v1.GetPolicyBasedRouteRequest\x1a\x35.google.cloud.networkconnectivity.v1.PolicyBasedRoute\"I\xda\x41\x04name\x82\xd3\xe4\x93\x02<\x12:/v1/{name=projects/*/locations/global/policyBasedRoutes/*}\x12\xae\x02\n\x16\x43reatePolicyBasedRoute\x12\x42.google.cloud.networkconnectivity.v1.CreatePolicyBasedRouteRequest\x1a\x1d.google.longrunning.Operation\"\xb0\x01\xca\x41%\n\x10PolicyBasedRoute\x12\x11OperationMetadata\xda\x41/parent,policy_based_route,policy_based_route_id\x82\xd3\xe4\x93\x02P\":/v1/{parent=projects/*/locations/global}/policyBasedRoutes:\x12policy_based_route\x12\xf3\x01\n\x16\x44\x65letePolicyBasedRoute\x12\x42.google.cloud.networkconnectivity.v1.DeletePolicyBasedRouteRequest\x1a\x1d.google.longrunning.Operation\"v\xca\x41*\n\x15google.protobuf.Empty\x12\x11OperationMetadata\xda\x41\x04name\x82\xd3\xe4\x93\x02<*:/v1/{name=projects/*/locations/global/policyBasedRoutes/*}\x1aV\xca\x41\"networkconnectivity.googleapis.com\xd2\x41.https://www.googleapis.com/auth/cloud-platformB\x94\x02\n\'com.google.cloud.networkconnectivity.v1B\x17PolicyBasedRoutingProtoP\x01ZYcloud.google.com/go/networkconnectivity/apiv1/networkconnectivitypb;networkconnectivitypb\xaa\x02#Google.Cloud.NetworkConnectivity.V1\xca\x02#Google\\Cloud\\NetworkConnectivity\\V1\xea\x02&Google::Cloud::NetworkConnectivity::V1b\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool

begin
  pool.add_serialized_file(descriptor_data)
rescue TypeError
  # Compatibility code: will be removed in the next major version.
  require 'google/protobuf/descriptor_pb'
  parsed = Google::Protobuf::FileDescriptorProto.decode(descriptor_data)
  parsed.clear_dependency
  serialized = parsed.class.encode(parsed)
  file = pool.add_serialized_file(serialized)
  warn "Warning: Protobuf detected an import path issue while loading generated file #{__FILE__}"
  imports = [
    ["google.protobuf.Timestamp", "google/protobuf/timestamp.proto"],
  ]
  imports.each do |type_name, expected_filename|
    import_file = pool.lookup(type_name).file_descriptor
    if import_file.name != expected_filename
      warn "- #{file.name} imports #{expected_filename}, but that import was loaded as #{import_file.name}"
    end
  end
  warn "Each proto file must use a consistent fully-qualified name."
  warn "This will become an error in the next major version."
end

module Google
  module Cloud
    module NetworkConnectivity
      module V1
        PolicyBasedRoute = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkconnectivity.v1.PolicyBasedRoute").msgclass
        PolicyBasedRoute::VirtualMachine = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkconnectivity.v1.PolicyBasedRoute.VirtualMachine").msgclass
        PolicyBasedRoute::InterconnectAttachment = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkconnectivity.v1.PolicyBasedRoute.InterconnectAttachment").msgclass
        PolicyBasedRoute::Filter = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkconnectivity.v1.PolicyBasedRoute.Filter").msgclass
        PolicyBasedRoute::Filter::ProtocolVersion = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkconnectivity.v1.PolicyBasedRoute.Filter.ProtocolVersion").enummodule
        PolicyBasedRoute::Warnings = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkconnectivity.v1.PolicyBasedRoute.Warnings").msgclass
        PolicyBasedRoute::Warnings::Code = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkconnectivity.v1.PolicyBasedRoute.Warnings.Code").enummodule
        PolicyBasedRoute::OtherRoutes = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkconnectivity.v1.PolicyBasedRoute.OtherRoutes").enummodule
        ListPolicyBasedRoutesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkconnectivity.v1.ListPolicyBasedRoutesRequest").msgclass
        ListPolicyBasedRoutesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkconnectivity.v1.ListPolicyBasedRoutesResponse").msgclass
        GetPolicyBasedRouteRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkconnectivity.v1.GetPolicyBasedRouteRequest").msgclass
        CreatePolicyBasedRouteRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkconnectivity.v1.CreatePolicyBasedRouteRequest").msgclass
        DeletePolicyBasedRouteRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkconnectivity.v1.DeletePolicyBasedRouteRequest").msgclass
      end
    end
  end
end
