# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/chat/v1/user.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'


descriptor_data = "\n\x19google/chat/v1/user.proto\x12\x0egoogle.chat.v1\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\"\xb8\x01\n\x04User\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\x19\n\x0c\x64isplay_name\x18\x02 \x01(\tB\x03\xe0\x41\x03\x12\x11\n\tdomain_id\x18\x06 \x01(\t\x12\'\n\x04type\x18\x05 \x01(\x0e\x32\x19.google.chat.v1.User.Type\x12\x19\n\x0cis_anonymous\x18\x07 \x01(\x08\x42\x03\xe0\x41\x03\"0\n\x04Type\x12\x14\n\x10TYPE_UNSPECIFIED\x10\x00\x12\t\n\x05HUMAN\x10\x01\x12\x07\n\x03\x42OT\x10\x02\x42\xa2\x01\n\x12\x63om.google.chat.v1B\tUserProtoP\x01Z,cloud.google.com/go/chat/apiv1/chatpb;chatpb\xa2\x02\x0b\x44YNAPIProto\xaa\x02\x13Google.Apps.Chat.V1\xca\x02\x13Google\\Apps\\Chat\\V1\xea\x02\x16Google::Apps::Chat::V1b\x06proto3"

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
  module Apps
    module Chat
      module V1
        User = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.chat.v1.User").msgclass
        User::Type = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.chat.v1.User.Type").enummodule
      end
    end
  end
end
