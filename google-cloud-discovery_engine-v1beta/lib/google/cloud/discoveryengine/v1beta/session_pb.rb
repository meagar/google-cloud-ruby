# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/discoveryengine/v1beta/session.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n1google/cloud/discoveryengine/v1beta/session.proto\x12#google.cloud.discoveryengine.v1beta\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\xa7\x06\n\x07Session\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x05\x12\x41\n\x05state\x18\x02 \x01(\x0e\x32\x32.google.cloud.discoveryengine.v1beta.Session.State\x12\x16\n\x0euser_pseudo_id\x18\x03 \x01(\t\x12@\n\x05turns\x18\x04 \x03(\x0b\x32\x31.google.cloud.discoveryengine.v1beta.Session.Turn\x12\x33\n\nstart_time\x18\x05 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x31\n\x08\x65nd_time\x18\x06 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x1a}\n\x04Turn\x12\x39\n\x05query\x18\x01 \x01(\x0b\x32*.google.cloud.discoveryengine.v1beta.Query\x12:\n\x06\x61nswer\x18\x02 \x01(\tB*\xfa\x41\'\n%discoveryengine.googleapis.com/Answer\"/\n\x05State\x12\x15\n\x11STATE_UNSPECIFIED\x10\x00\x12\x0f\n\x0bIN_PROGRESS\x10\x01:\xd3\x02\xea\x41\xcf\x02\n&discoveryengine.googleapis.com/Session\x12Rprojects/{project}/locations/{location}/dataStores/{data_store}/sessions/{session}\x12kprojects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}/sessions/{session}\x12\x64projects/{project}/locations/{location}/collections/{collection}/engines/{engine}/sessions/{session}\"4\n\x05Query\x12\x0e\n\x04text\x18\x02 \x01(\tH\x00\x12\x10\n\x08query_id\x18\x01 \x01(\tB\t\n\x07\x63ontentB\x93\x02\n\'com.google.cloud.discoveryengine.v1betaB\x0cSessionProtoP\x01ZQcloud.google.com/go/discoveryengine/apiv1beta/discoveryenginepb;discoveryenginepb\xa2\x02\x0f\x44ISCOVERYENGINE\xaa\x02#Google.Cloud.DiscoveryEngine.V1Beta\xca\x02#Google\\Cloud\\DiscoveryEngine\\V1beta\xea\x02&Google::Cloud::DiscoveryEngine::V1betab\x06proto3"

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
    module DiscoveryEngine
      module V1beta
        Session = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1beta.Session").msgclass
        Session::Turn = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1beta.Session.Turn").msgclass
        Session::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1beta.Session.State").enummodule
        Query = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1beta.Query").msgclass
      end
    end
  end
end
