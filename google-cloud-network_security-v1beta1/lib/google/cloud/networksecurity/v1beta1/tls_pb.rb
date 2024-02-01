# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/networksecurity/v1beta1/tls.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'


descriptor_data = "\n.google/cloud/networksecurity/v1beta1/tls.proto\x12$google.cloud.networksecurity.v1beta1\x1a\x1fgoogle/api/field_behavior.proto\"(\n\x0cGrpcEndpoint\x12\x18\n\ntarget_uri\x18\x01 \x01(\tB\x04\xe2\x41\x01\x02\"\xcf\x01\n\x0cValidationCA\x12K\n\rgrpc_endpoint\x18\x02 \x01(\x0b\x32\x32.google.cloud.networksecurity.v1beta1.GrpcEndpointH\x00\x12j\n\x1d\x63\x65rtificate_provider_instance\x18\x03 \x01(\x0b\x32\x41.google.cloud.networksecurity.v1beta1.CertificateProviderInstanceH\x00\x42\x06\n\x04type\"<\n\x1b\x43\x65rtificateProviderInstance\x12\x1d\n\x0fplugin_instance\x18\x01 \x01(\tB\x04\xe2\x41\x01\x02\"\xd6\x01\n\x13\x43\x65rtificateProvider\x12K\n\rgrpc_endpoint\x18\x02 \x01(\x0b\x32\x32.google.cloud.networksecurity.v1beta1.GrpcEndpointH\x00\x12j\n\x1d\x63\x65rtificate_provider_instance\x18\x03 \x01(\x0b\x32\x41.google.cloud.networksecurity.v1beta1.CertificateProviderInstanceH\x00\x42\x06\n\x04typeB\x82\x02\n(com.google.cloud.networksecurity.v1beta1B\x08TlsProtoP\x01ZRcloud.google.com/go/networksecurity/apiv1beta1/networksecuritypb;networksecuritypb\xaa\x02$Google.Cloud.NetworkSecurity.V1Beta1\xca\x02$Google\\Cloud\\NetworkSecurity\\V1beta1\xea\x02\'Google::Cloud::NetworkSecurity::V1beta1b\x06proto3"

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
    module NetworkSecurity
      module V1beta1
        GrpcEndpoint = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networksecurity.v1beta1.GrpcEndpoint").msgclass
        ValidationCA = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networksecurity.v1beta1.ValidationCA").msgclass
        CertificateProviderInstance = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networksecurity.v1beta1.CertificateProviderInstance").msgclass
        CertificateProvider = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networksecurity.v1beta1.CertificateProvider").msgclass
      end
    end
  end
end
