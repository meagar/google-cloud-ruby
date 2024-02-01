# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/notebooks/v2/service.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/notebooks/v2/diagnostic_config_pb'
require 'google/cloud/notebooks/v2/instance_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n\'google/cloud/notebooks/v2/service.proto\x12\x19google.cloud.notebooks.v2\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x31google/cloud/notebooks/v2/diagnostic_config.proto\x1a(google/cloud/notebooks/v2/instance.proto\x1a#google/longrunning/operations.proto\x1a\x1bgoogle/protobuf/empty.proto\x1a google/protobuf/field_mask.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\xef\x01\n\x11OperationMetadata\x12/\n\x0b\x63reate_time\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12,\n\x08\x65nd_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12\x0e\n\x06target\x18\x03 \x01(\t\x12\x0c\n\x04verb\x18\x04 \x01(\t\x12\x16\n\x0estatus_message\x18\x05 \x01(\t\x12\x1e\n\x16requested_cancellation\x18\x06 \x01(\x08\x12\x13\n\x0b\x61pi_version\x18\x07 \x01(\t\x12\x10\n\x08\x65ndpoint\x18\x08 \x01(\t\"\xb3\x01\n\x14ListInstancesRequest\x12:\n\x06parent\x18\x01 \x01(\tB*\xe2\x41\x01\x02\xfa\x41#\x12!notebooks.googleapis.com/Instance\x12\x17\n\tpage_size\x18\x02 \x01(\x05\x42\x04\xe2\x41\x01\x01\x12\x18\n\npage_token\x18\x03 \x01(\tB\x04\xe2\x41\x01\x01\x12\x16\n\x08order_by\x18\x04 \x01(\tB\x04\xe2\x41\x01\x01\x12\x14\n\x06\x66ilter\x18\x05 \x01(\tB\x04\xe2\x41\x01\x01\"}\n\x15ListInstancesResponse\x12\x36\n\tinstances\x18\x01 \x03(\x0b\x32#.google.cloud.notebooks.v2.Instance\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\x12\x13\n\x0bunreachable\x18\x03 \x03(\t\"N\n\x12GetInstanceRequest\x12\x38\n\x04name\x18\x01 \x01(\tB*\xe2\x41\x01\x02\xfa\x41#\n!notebooks.googleapis.com/Instance\"\xc5\x01\n\x15\x43reateInstanceRequest\x12:\n\x06parent\x18\x01 \x01(\tB*\xe2\x41\x01\x02\xfa\x41#\x12!notebooks.googleapis.com/Instance\x12\x19\n\x0binstance_id\x18\x02 \x01(\tB\x04\xe2\x41\x01\x02\x12;\n\x08instance\x18\x03 \x01(\x0b\x32#.google.cloud.notebooks.v2.InstanceB\x04\xe2\x41\x01\x02\x12\x18\n\nrequest_id\x18\x04 \x01(\tB\x04\xe2\x41\x01\x01\"\xa5\x01\n\x15UpdateInstanceRequest\x12;\n\x08instance\x18\x01 \x01(\x0b\x32#.google.cloud.notebooks.v2.InstanceB\x04\xe2\x41\x01\x02\x12\x35\n\x0bupdate_mask\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.FieldMaskB\x04\xe2\x41\x01\x02\x12\x18\n\nrequest_id\x18\x03 \x01(\tB\x04\xe2\x41\x01\x01\"k\n\x15\x44\x65leteInstanceRequest\x12\x38\n\x04name\x18\x01 \x01(\tB*\xe2\x41\x01\x02\xfa\x41#\n!notebooks.googleapis.com/Instance\x12\x18\n\nrequest_id\x18\x02 \x01(\tB\x04\xe2\x41\x01\x01\"*\n\x14StartInstanceRequest\x12\x12\n\x04name\x18\x01 \x01(\tB\x04\xe2\x41\x01\x02\")\n\x13StopInstanceRequest\x12\x12\n\x04name\x18\x01 \x01(\tB\x04\xe2\x41\x01\x02\"*\n\x14ResetInstanceRequest\x12\x12\n\x04name\x18\x01 \x01(\tB\x04\xe2\x41\x01\x02\"D\n!CheckInstanceUpgradabilityRequest\x12\x1f\n\x11notebook_instance\x18\x01 \x01(\tB\x04\xe2\x41\x01\x02\"\x7f\n\"CheckInstanceUpgradabilityResponse\x12\x13\n\x0bupgradeable\x18\x01 \x01(\x08\x12\x17\n\x0fupgrade_version\x18\x02 \x01(\t\x12\x14\n\x0cupgrade_info\x18\x03 \x01(\t\x12\x15\n\rupgrade_image\x18\x04 \x01(\t\",\n\x16UpgradeInstanceRequest\x12\x12\n\x04name\x18\x01 \x01(\tB\x04\xe2\x41\x01\x02\"\x8e\x01\n\x17RollbackInstanceRequest\x12\x38\n\x04name\x18\x01 \x01(\tB*\xe2\x41\x01\x02\xfa\x41#\n!notebooks.googleapis.com/Instance\x12\x1d\n\x0ftarget_snapshot\x18\x02 \x01(\tB\x04\xe2\x41\x01\x02\x12\x1a\n\x0brevision_id\x18\x03 \x01(\tB\x05\xe2\x41\x02\x03\x02\"\xc0\x01\n\x17\x44iagnoseInstanceRequest\x12\x38\n\x04name\x18\x01 \x01(\tB*\xe2\x41\x01\x02\xfa\x41#\n!notebooks.googleapis.com/Instance\x12L\n\x11\x64iagnostic_config\x18\x02 \x01(\x0b\x32+.google.cloud.notebooks.v2.DiagnosticConfigB\x04\xe2\x41\x01\x02\x12\x1d\n\x0ftimeout_minutes\x18\x03 \x01(\x05\x42\x04\xe2\x41\x01\x01\x32\xfa\x13\n\x0fNotebookService\x12\xb2\x01\n\rListInstances\x12/.google.cloud.notebooks.v2.ListInstancesRequest\x1a\x30.google.cloud.notebooks.v2.ListInstancesResponse\">\xda\x41\x06parent\x82\xd3\xe4\x93\x02/\x12-/v2/{parent=projects/*/locations/*}/instances\x12\x9f\x01\n\x0bGetInstance\x12-.google.cloud.notebooks.v2.GetInstanceRequest\x1a#.google.cloud.notebooks.v2.Instance\"<\xda\x41\x04name\x82\xd3\xe4\x93\x02/\x12-/v2/{name=projects/*/locations/*/instances/*}\x12\xe0\x01\n\x0e\x43reateInstance\x12\x30.google.cloud.notebooks.v2.CreateInstanceRequest\x1a\x1d.google.longrunning.Operation\"}\xca\x41\x1d\n\x08Instance\x12\x11OperationMetadata\xda\x41\x1bparent,instance,instance_id\x82\xd3\xe4\x93\x02\x39\"-/v2/{parent=projects/*/locations/*}/instances:\x08instance\x12\xe2\x01\n\x0eUpdateInstance\x12\x30.google.cloud.notebooks.v2.UpdateInstanceRequest\x1a\x1d.google.longrunning.Operation\"\x7f\xca\x41\x1d\n\x08Instance\x12\x11OperationMetadata\xda\x41\x14instance,update_mask\x82\xd3\xe4\x93\x02\x42\x32\x36/v2/{instance.name=projects/*/locations/*/instances/*}:\x08instance\x12\xcc\x01\n\x0e\x44\x65leteInstance\x12\x30.google.cloud.notebooks.v2.DeleteInstanceRequest\x1a\x1d.google.longrunning.Operation\"i\xca\x41*\n\x15google.protobuf.Empty\x12\x11OperationMetadata\xda\x41\x04name\x82\xd3\xe4\x93\x02/*-/v2/{name=projects/*/locations/*/instances/*}\x12\xbf\x01\n\rStartInstance\x12/.google.cloud.notebooks.v2.StartInstanceRequest\x1a\x1d.google.longrunning.Operation\"^\xca\x41\x1d\n\x08Instance\x12\x11OperationMetadata\x82\xd3\xe4\x93\x02\x38\"3/v2/{name=projects/*/locations/*/instances/*}:start:\x01*\x12\xbc\x01\n\x0cStopInstance\x12..google.cloud.notebooks.v2.StopInstanceRequest\x1a\x1d.google.longrunning.Operation\"]\xca\x41\x1d\n\x08Instance\x12\x11OperationMetadata\x82\xd3\xe4\x93\x02\x37\"2/v2/{name=projects/*/locations/*/instances/*}:stop:\x01*\x12\xbf\x01\n\rResetInstance\x12/.google.cloud.notebooks.v2.ResetInstanceRequest\x1a\x1d.google.longrunning.Operation\"^\xca\x41\x1d\n\x08Instance\x12\x11OperationMetadata\x82\xd3\xe4\x93\x02\x38\"3/v2/{name=projects/*/locations/*/instances/*}:reset:\x01*\x12\xf0\x01\n\x1a\x43heckInstanceUpgradability\x12<.google.cloud.notebooks.v2.CheckInstanceUpgradabilityRequest\x1a=.google.cloud.notebooks.v2.CheckInstanceUpgradabilityResponse\"U\x82\xd3\xe4\x93\x02O\x12M/v2/{notebook_instance=projects/*/locations/*/instances/*}:checkUpgradability\x12\xc5\x01\n\x0fUpgradeInstance\x12\x31.google.cloud.notebooks.v2.UpgradeInstanceRequest\x1a\x1d.google.longrunning.Operation\"`\xca\x41\x1d\n\x08Instance\x12\x11OperationMetadata\x82\xd3\xe4\x93\x02:\"5/v2/{name=projects/*/locations/*/instances/*}:upgrade:\x01*\x12\xc8\x01\n\x10RollbackInstance\x12\x32.google.cloud.notebooks.v2.RollbackInstanceRequest\x1a\x1d.google.longrunning.Operation\"a\xca\x41\x1d\n\x08Instance\x12\x11OperationMetadata\x82\xd3\xe4\x93\x02;\"6/v2/{name=projects/*/locations/*/instances/*}:rollback:\x01*\x12\xe1\x01\n\x10\x44iagnoseInstance\x12\x32.google.cloud.notebooks.v2.DiagnoseInstanceRequest\x1a\x1d.google.longrunning.Operation\"z\xca\x41\x1d\n\x08Instance\x12\x11OperationMetadata\xda\x41\x16name,diagnostic_config\x82\xd3\xe4\x93\x02;\"6/v2/{name=projects/*/locations/*/instances/*}:diagnose:\x01*\x1aL\xca\x41\x18notebooks.googleapis.com\xd2\x41.https://www.googleapis.com/auth/cloud-platformB\xc3\x01\n\x1d\x63om.google.cloud.notebooks.v2B\x0cServiceProtoP\x01Z;cloud.google.com/go/notebooks/apiv2/notebookspb;notebookspb\xaa\x02\x19Google.Cloud.Notebooks.V2\xca\x02\x19Google\\Cloud\\Notebooks\\V2\xea\x02\x1cGoogle::Cloud::Notebooks::V2b\x06proto3"

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
    ["google.cloud.notebooks.v2.Instance", "google/cloud/notebooks/v2/instance.proto"],
    ["google.protobuf.FieldMask", "google/protobuf/field_mask.proto"],
    ["google.cloud.notebooks.v2.DiagnosticConfig", "google/cloud/notebooks/v2/diagnostic_config.proto"],
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
    module Notebooks
      module V2
        OperationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v2.OperationMetadata").msgclass
        ListInstancesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v2.ListInstancesRequest").msgclass
        ListInstancesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v2.ListInstancesResponse").msgclass
        GetInstanceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v2.GetInstanceRequest").msgclass
        CreateInstanceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v2.CreateInstanceRequest").msgclass
        UpdateInstanceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v2.UpdateInstanceRequest").msgclass
        DeleteInstanceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v2.DeleteInstanceRequest").msgclass
        StartInstanceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v2.StartInstanceRequest").msgclass
        StopInstanceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v2.StopInstanceRequest").msgclass
        ResetInstanceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v2.ResetInstanceRequest").msgclass
        CheckInstanceUpgradabilityRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v2.CheckInstanceUpgradabilityRequest").msgclass
        CheckInstanceUpgradabilityResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v2.CheckInstanceUpgradabilityResponse").msgclass
        UpgradeInstanceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v2.UpgradeInstanceRequest").msgclass
        RollbackInstanceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v2.RollbackInstanceRequest").msgclass
        DiagnoseInstanceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v2.DiagnoseInstanceRequest").msgclass
      end
    end
  end
end
