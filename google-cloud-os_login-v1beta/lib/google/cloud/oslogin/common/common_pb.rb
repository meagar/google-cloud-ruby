# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/oslogin/common/common.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'


descriptor_data = "\n(google/cloud/oslogin/common/common.proto\x12\x1bgoogle.cloud.oslogin.common\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\"\xde\x02\n\x0cPosixAccount\x12\x0f\n\x07primary\x18\x01 \x01(\x08\x12\x10\n\x08username\x18\x02 \x01(\t\x12\x0b\n\x03uid\x18\x03 \x01(\x03\x12\x0b\n\x03gid\x18\x04 \x01(\x03\x12\x16\n\x0ehome_directory\x18\x05 \x01(\t\x12\r\n\x05shell\x18\x06 \x01(\t\x12\r\n\x05gecos\x18\x07 \x01(\t\x12\x11\n\tsystem_id\x18\x08 \x01(\t\x12\x18\n\naccount_id\x18\t \x01(\tB\x04\xe2\x41\x01\x03\x12O\n\x15operating_system_type\x18\n \x01(\x0e\x32\x30.google.cloud.oslogin.common.OperatingSystemType\x12\x12\n\x04name\x18\x0b \x01(\tB\x04\xe2\x41\x01\x03:I\xea\x41\x46\n#oslogin.googleapis.com/PosixAccount\x12\x1fusers/{user}/projects/{project}\"\xbc\x01\n\x0cSshPublicKey\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\x1c\n\x14\x65xpiration_time_usec\x18\x02 \x01(\x03\x12\x19\n\x0b\x66ingerprint\x18\x03 \x01(\tB\x04\xe2\x41\x01\x03\x12\x12\n\x04name\x18\x04 \x01(\tB\x04\xe2\x41\x01\x03:R\xea\x41O\n#oslogin.googleapis.com/SshPublicKey\x12(users/{user}/sshPublicKeys/{fingerprint}*T\n\x13OperatingSystemType\x12%\n!OPERATING_SYSTEM_TYPE_UNSPECIFIED\x10\x00\x12\t\n\x05LINUX\x10\x01\x12\x0b\n\x07WINDOWS\x10\x02\x42\xf0\x01\n\x1f\x63om.google.cloud.oslogin.commonB\x0cOsLoginProtoZ4cloud.google.com/go/oslogin/common/commonpb;commonpb\xaa\x02\x1bGoogle.Cloud.OsLogin.Common\xca\x02\x1bGoogle\\Cloud\\OsLogin\\Common\xea\x02\x1eGoogle::Cloud::OsLogin::Common\xea\x41+\n\x1boslogin.googleapis.com/User\x12\x0cusers/{user}b\x06proto3"

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
    module OsLogin
      module Common
        PosixAccount = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.oslogin.common.PosixAccount").msgclass
        SshPublicKey = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.oslogin.common.SshPublicKey").msgclass
        OperatingSystemType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.oslogin.common.OperatingSystemType").enummodule
      end
    end
  end
end
