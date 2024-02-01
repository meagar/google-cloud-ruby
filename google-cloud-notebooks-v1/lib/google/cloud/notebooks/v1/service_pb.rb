# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/notebooks/v1/service.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/notebooks/v1/diagnostic_config_pb'
require 'google/cloud/notebooks/v1/environment_pb'
require 'google/cloud/notebooks/v1/execution_pb'
require 'google/cloud/notebooks/v1/instance_pb'
require 'google/cloud/notebooks/v1/instance_config_pb'
require 'google/cloud/notebooks/v1/schedule_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n\'google/cloud/notebooks/v1/service.proto\x12\x19google.cloud.notebooks.v1\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x31google/cloud/notebooks/v1/diagnostic_config.proto\x1a+google/cloud/notebooks/v1/environment.proto\x1a)google/cloud/notebooks/v1/execution.proto\x1a(google/cloud/notebooks/v1/instance.proto\x1a/google/cloud/notebooks/v1/instance_config.proto\x1a(google/cloud/notebooks/v1/schedule.proto\x1a#google/longrunning/operations.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\xef\x01\n\x11OperationMetadata\x12/\n\x0b\x63reate_time\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12,\n\x08\x65nd_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12\x0e\n\x06target\x18\x03 \x01(\t\x12\x0c\n\x04verb\x18\x04 \x01(\t\x12\x16\n\x0estatus_message\x18\x05 \x01(\t\x12\x1e\n\x16requested_cancellation\x18\x06 \x01(\x08\x12\x13\n\x0b\x61pi_version\x18\x07 \x01(\t\x12\x10\n\x08\x65ndpoint\x18\x08 \x01(\t\"S\n\x14ListInstancesRequest\x12\x14\n\x06parent\x18\x01 \x01(\tB\x04\xe2\x41\x01\x02\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\"}\n\x15ListInstancesResponse\x12\x36\n\tinstances\x18\x01 \x03(\x0b\x32#.google.cloud.notebooks.v1.Instance\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\x12\x13\n\x0bunreachable\x18\x03 \x03(\t\"(\n\x12GetInstanceRequest\x12\x12\n\x04name\x18\x01 \x01(\tB\x04\xe2\x41\x01\x02\"\x85\x01\n\x15\x43reateInstanceRequest\x12\x14\n\x06parent\x18\x01 \x01(\tB\x04\xe2\x41\x01\x02\x12\x19\n\x0binstance_id\x18\x02 \x01(\tB\x04\xe2\x41\x01\x02\x12;\n\x08instance\x18\x03 \x01(\x0b\x32#.google.cloud.notebooks.v1.InstanceB\x04\xe2\x41\x01\x02\"J\n\x17RegisterInstanceRequest\x12\x14\n\x06parent\x18\x01 \x01(\tB\x04\xe2\x41\x01\x02\x12\x19\n\x0binstance_id\x18\x02 \x01(\tB\x04\xe2\x41\x01\x02\"\x96\x01\n\x1dSetInstanceAcceleratorRequest\x12\x12\n\x04name\x18\x01 \x01(\tB\x04\xe2\x41\x01\x02\x12G\n\x04type\x18\x02 \x01(\x0e\x32\x33.google.cloud.notebooks.v1.Instance.AcceleratorTypeB\x04\xe2\x41\x01\x02\x12\x18\n\ncore_count\x18\x03 \x01(\x03\x42\x04\xe2\x41\x01\x02\"O\n\x1dSetInstanceMachineTypeRequest\x12\x12\n\x04name\x18\x01 \x01(\tB\x04\xe2\x41\x01\x02\x12\x1a\n\x0cmachine_type\x18\x02 \x01(\tB\x04\xe2\x41\x01\x02\"l\n\x1bUpdateInstanceConfigRequest\x12\x12\n\x04name\x18\x01 \x01(\tB\x04\xe2\x41\x01\x02\x12\x39\n\x06\x63onfig\x18\x02 \x01(\x0b\x32).google.cloud.notebooks.v1.InstanceConfig\"\xae\x01\n\x18SetInstanceLabelsRequest\x12\x12\n\x04name\x18\x01 \x01(\tB\x04\xe2\x41\x01\x02\x12O\n\x06labels\x18\x02 \x03(\x0b\x32?.google.cloud.notebooks.v1.SetInstanceLabelsRequest.LabelsEntry\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"\xbf\x01\n\"UpdateInstanceMetadataItemsRequest\x12\x12\n\x04name\x18\x01 \x01(\tB\x04\xe2\x41\x01\x02\x12W\n\x05items\x18\x02 \x03(\x0b\x32H.google.cloud.notebooks.v1.UpdateInstanceMetadataItemsRequest.ItemsEntry\x1a,\n\nItemsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"\xad\x01\n#UpdateInstanceMetadataItemsResponse\x12X\n\x05items\x18\x01 \x03(\x0b\x32I.google.cloud.notebooks.v1.UpdateInstanceMetadataItemsResponse.ItemsEntry\x1a,\n\nItemsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"\x97\x01\n#UpdateShieldedInstanceConfigRequest\x12\x12\n\x04name\x18\x01 \x01(\tB\x04\xe2\x41\x01\x02\x12\\\n\x18shielded_instance_config\x18\x02 \x01(\x0b\x32:.google.cloud.notebooks.v1.Instance.ShieldedInstanceConfig\"+\n\x15\x44\x65leteInstanceRequest\x12\x12\n\x04name\x18\x01 \x01(\tB\x04\xe2\x41\x01\x02\"*\n\x14StartInstanceRequest\x12\x12\n\x04name\x18\x01 \x01(\tB\x04\xe2\x41\x01\x02\")\n\x13StopInstanceRequest\x12\x12\n\x04name\x18\x01 \x01(\tB\x04\xe2\x41\x01\x02\"*\n\x14ResetInstanceRequest\x12\x12\n\x04name\x18\x01 \x01(\tB\x04\xe2\x41\x01\x02\"\xcb\x01\n\x19ReportInstanceInfoRequest\x12\x12\n\x04name\x18\x01 \x01(\tB\x04\xe2\x41\x01\x02\x12\x13\n\x05vm_id\x18\x02 \x01(\tB\x04\xe2\x41\x01\x02\x12T\n\x08metadata\x18\x03 \x03(\x0b\x32\x42.google.cloud.notebooks.v1.ReportInstanceInfoRequest.MetadataEntry\x1a/\n\rMetadataEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"{\n\x1cIsInstanceUpgradeableRequest\x12\x1f\n\x11notebook_instance\x18\x01 \x01(\tB\x04\xe2\x41\x01\x02\x12:\n\x04type\x18\x02 \x01(\x0e\x32&.google.cloud.notebooks.v1.UpgradeTypeB\x04\xe2\x41\x01\x01\"z\n\x1dIsInstanceUpgradeableResponse\x12\x13\n\x0bupgradeable\x18\x01 \x01(\x08\x12\x17\n\x0fupgrade_version\x18\x02 \x01(\t\x12\x14\n\x0cupgrade_info\x18\x03 \x01(\t\x12\x15\n\rupgrade_image\x18\x04 \x01(\t\"T\n\x18GetInstanceHealthRequest\x12\x38\n\x04name\x18\x01 \x01(\tB*\xe2\x41\x01\x02\xfa\x41#\n!notebooks.googleapis.com/Instance\"\x86\x03\n\x19GetInstanceHealthResponse\x12\\\n\x0chealth_state\x18\x01 \x01(\x0e\x32@.google.cloud.notebooks.v1.GetInstanceHealthResponse.HealthStateB\x04\xe2\x41\x01\x03\x12_\n\x0bhealth_info\x18\x02 \x03(\x0b\x32\x44.google.cloud.notebooks.v1.GetInstanceHealthResponse.HealthInfoEntryB\x04\xe2\x41\x01\x03\x1a\x31\n\x0fHealthInfoEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"w\n\x0bHealthState\x12\x1c\n\x18HEALTH_STATE_UNSPECIFIED\x10\x00\x12\x0b\n\x07HEALTHY\x10\x01\x12\r\n\tUNHEALTHY\x10\x02\x12\x17\n\x13\x41GENT_NOT_INSTALLED\x10\x03\x12\x15\n\x11\x41GENT_NOT_RUNNING\x10\x04\"h\n\x16UpgradeInstanceRequest\x12\x12\n\x04name\x18\x01 \x01(\tB\x04\xe2\x41\x01\x02\x12:\n\x04type\x18\x02 \x01(\x0e\x32&.google.cloud.notebooks.v1.UpgradeTypeB\x04\xe2\x41\x01\x01\"L\n\x17RollbackInstanceRequest\x12\x12\n\x04name\x18\x01 \x01(\tB\x04\xe2\x41\x01\x02\x12\x1d\n\x0ftarget_snapshot\x18\x02 \x01(\tB\x04\xe2\x41\x01\x02\"\x85\x01\n\x1eUpgradeInstanceInternalRequest\x12\x12\n\x04name\x18\x01 \x01(\tB\x04\xe2\x41\x01\x02\x12\x13\n\x05vm_id\x18\x02 \x01(\tB\x04\xe2\x41\x01\x02\x12:\n\x04type\x18\x03 \x01(\x0e\x32&.google.cloud.notebooks.v1.UpgradeTypeB\x04\xe2\x41\x01\x01\"V\n\x17ListEnvironmentsRequest\x12\x14\n\x06parent\x18\x01 \x01(\tB\x04\xe2\x41\x01\x02\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\"\xa1\x01\n\x17\x44iagnoseInstanceRequest\x12\x38\n\x04name\x18\x01 \x01(\tB*\xe2\x41\x01\x02\xfa\x41#\n!notebooks.googleapis.com/Instance\x12L\n\x11\x64iagnostic_config\x18\x02 \x01(\x0b\x32+.google.cloud.notebooks.v1.DiagnosticConfigB\x04\xe2\x41\x01\x02\"\x86\x01\n\x18ListEnvironmentsResponse\x12<\n\x0c\x65nvironments\x18\x01 \x03(\x0b\x32&.google.cloud.notebooks.v1.Environment\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\x12\x13\n\x0bunreachable\x18\x03 \x03(\t\"+\n\x15GetEnvironmentRequest\x12\x12\n\x04name\x18\x01 \x01(\tB\x04\xe2\x41\x01\x02\"\x91\x01\n\x18\x43reateEnvironmentRequest\x12\x14\n\x06parent\x18\x01 \x01(\tB\x04\xe2\x41\x01\x02\x12\x1c\n\x0e\x65nvironment_id\x18\x02 \x01(\tB\x04\xe2\x41\x01\x02\x12\x41\n\x0b\x65nvironment\x18\x03 \x01(\x0b\x32&.google.cloud.notebooks.v1.EnvironmentB\x04\xe2\x41\x01\x02\".\n\x18\x44\x65leteEnvironmentRequest\x12\x12\n\x04name\x18\x01 \x01(\tB\x04\xe2\x41\x01\x02\"\x9b\x01\n\x14ListSchedulesRequest\x12:\n\x06parent\x18\x01 \x01(\tB*\xe2\x41\x01\x02\xfa\x41#\n!notebooks.googleapis.com/Schedule\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\x12\x0e\n\x06\x66ilter\x18\x04 \x01(\t\x12\x10\n\x08order_by\x18\x05 \x01(\t\"}\n\x15ListSchedulesResponse\x12\x36\n\tschedules\x18\x01 \x03(\x0b\x32#.google.cloud.notebooks.v1.Schedule\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\x12\x13\n\x0bunreachable\x18\x03 \x03(\t\"N\n\x12GetScheduleRequest\x12\x38\n\x04name\x18\x01 \x01(\tB*\xe2\x41\x01\x02\xfa\x41#\n!notebooks.googleapis.com/Schedule\"Q\n\x15\x44\x65leteScheduleRequest\x12\x38\n\x04name\x18\x01 \x01(\tB*\xe2\x41\x01\x02\xfa\x41#\n!notebooks.googleapis.com/Schedule\"\xab\x01\n\x15\x43reateScheduleRequest\x12:\n\x06parent\x18\x01 \x01(\tB*\xe2\x41\x01\x02\xfa\x41#\n!notebooks.googleapis.com/Schedule\x12\x19\n\x0bschedule_id\x18\x02 \x01(\tB\x04\xe2\x41\x01\x02\x12;\n\x08schedule\x18\x03 \x01(\x0b\x32#.google.cloud.notebooks.v1.ScheduleB\x04\xe2\x41\x01\x02\"R\n\x16TriggerScheduleRequest\x12\x38\n\x04name\x18\x01 \x01(\tB*\xe2\x41\x01\x02\xfa\x41#\n!notebooks.googleapis.com/Schedule\"\x9d\x01\n\x15ListExecutionsRequest\x12;\n\x06parent\x18\x01 \x01(\tB+\xe2\x41\x01\x02\xfa\x41$\n\"notebooks.googleapis.com/Execution\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\x12\x0e\n\x06\x66ilter\x18\x04 \x01(\t\x12\x10\n\x08order_by\x18\x05 \x01(\t\"\x80\x01\n\x16ListExecutionsResponse\x12\x38\n\nexecutions\x18\x01 \x03(\x0b\x32$.google.cloud.notebooks.v1.Execution\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\x12\x13\n\x0bunreachable\x18\x03 \x03(\t\"P\n\x13GetExecutionRequest\x12\x39\n\x04name\x18\x01 \x01(\tB+\xe2\x41\x01\x02\xfa\x41$\n\"notebooks.googleapis.com/Execution\"S\n\x16\x44\x65leteExecutionRequest\x12\x39\n\x04name\x18\x01 \x01(\tB+\xe2\x41\x01\x02\xfa\x41$\n\"notebooks.googleapis.com/Execution\"\xb0\x01\n\x16\x43reateExecutionRequest\x12;\n\x06parent\x18\x01 \x01(\tB+\xe2\x41\x01\x02\xfa\x41$\n\"notebooks.googleapis.com/Execution\x12\x1a\n\x0c\x65xecution_id\x18\x02 \x01(\tB\x04\xe2\x41\x01\x02\x12=\n\texecution\x18\x03 \x01(\x0b\x32$.google.cloud.notebooks.v1.ExecutionB\x04\xe2\x41\x01\x02*u\n\x0bUpgradeType\x12\x1c\n\x18UPGRADE_TYPE_UNSPECIFIED\x10\x00\x12\x15\n\x11UPGRADE_FRAMEWORK\x10\x01\x12\x0e\n\nUPGRADE_OS\x10\x02\x12\x10\n\x0cUPGRADE_CUDA\x10\x03\x12\x0f\n\x0bUPGRADE_ALL\x10\x04\x32\xba\x37\n\x0fNotebookService\x12\xb2\x01\n\rListInstances\x12/.google.cloud.notebooks.v1.ListInstancesRequest\x1a\x30.google.cloud.notebooks.v1.ListInstancesResponse\">\xda\x41\x06parent\x82\xd3\xe4\x93\x02/\x12-/v1/{parent=projects/*/locations/*}/instances\x12\x9f\x01\n\x0bGetInstance\x12-.google.cloud.notebooks.v1.GetInstanceRequest\x1a#.google.cloud.notebooks.v1.Instance\"<\xda\x41\x04name\x82\xd3\xe4\x93\x02/\x12-/v1/{name=projects/*/locations/*/instances/*}\x12\xe0\x01\n\x0e\x43reateInstance\x12\x30.google.cloud.notebooks.v1.CreateInstanceRequest\x1a\x1d.google.longrunning.Operation\"}\xca\x41\x1d\n\x08Instance\x12\x11OperationMetadata\xda\x41\x1bparent,instance,instance_id\x82\xd3\xe4\x93\x02\x39\"-/v1/{parent=projects/*/locations/*}/instances:\x08instance\x12\xc8\x01\n\x10RegisterInstance\x12\x32.google.cloud.notebooks.v1.RegisterInstanceRequest\x1a\x1d.google.longrunning.Operation\"a\xca\x41\x1d\n\x08Instance\x12\x11OperationMetadata\x82\xd3\xe4\x93\x02;\"6/v1/{parent=projects/*/locations/*}/instances:register:\x01*\x12\xda\x01\n\x16SetInstanceAccelerator\x12\x38.google.cloud.notebooks.v1.SetInstanceAcceleratorRequest\x1a\x1d.google.longrunning.Operation\"g\xca\x41\x1d\n\x08Instance\x12\x11OperationMetadata\x82\xd3\xe4\x93\x02\x41\x32</v1/{name=projects/*/locations/*/instances/*}:setAccelerator:\x01*\x12\xda\x01\n\x16SetInstanceMachineType\x12\x38.google.cloud.notebooks.v1.SetInstanceMachineTypeRequest\x1a\x1d.google.longrunning.Operation\"g\xca\x41\x1d\n\x08Instance\x12\x11OperationMetadata\x82\xd3\xe4\x93\x02\x41\x32</v1/{name=projects/*/locations/*/instances/*}:setMachineType:\x01*\x12\xd4\x01\n\x14UpdateInstanceConfig\x12\x36.google.cloud.notebooks.v1.UpdateInstanceConfigRequest\x1a\x1d.google.longrunning.Operation\"e\xca\x41\x1d\n\x08Instance\x12\x11OperationMetadata\x82\xd3\xe4\x93\x02?2:/v1/{name=projects/*/locations/*/instances/*}:updateConfig:\x01*\x12\xf4\x01\n\x1cUpdateShieldedInstanceConfig\x12>.google.cloud.notebooks.v1.UpdateShieldedInstanceConfigRequest\x1a\x1d.google.longrunning.Operation\"u\xca\x41\x1d\n\x08Instance\x12\x11OperationMetadata\x82\xd3\xe4\x93\x02O2J/v1/{name=projects/*/locations/*/instances/*}:updateShieldedInstanceConfig:\x01*\x12\xcb\x01\n\x11SetInstanceLabels\x12\x33.google.cloud.notebooks.v1.SetInstanceLabelsRequest\x1a\x1d.google.longrunning.Operation\"b\xca\x41\x1d\n\x08Instance\x12\x11OperationMetadata\x82\xd3\xe4\x93\x02<27/v1/{name=projects/*/locations/*/instances/*}:setLabels:\x01*\x12\xea\x01\n\x1bUpdateInstanceMetadataItems\x12=.google.cloud.notebooks.v1.UpdateInstanceMetadataItemsRequest\x1a>.google.cloud.notebooks.v1.UpdateInstanceMetadataItemsResponse\"L\x82\xd3\xe4\x93\x02\x46\x32\x41/v1/{name=projects/*/locations/*/instances/*}:updateMetadataItems:\x01*\x12\xcc\x01\n\x0e\x44\x65leteInstance\x12\x30.google.cloud.notebooks.v1.DeleteInstanceRequest\x1a\x1d.google.longrunning.Operation\"i\xca\x41*\n\x15google.protobuf.Empty\x12\x11OperationMetadata\xda\x41\x04name\x82\xd3\xe4\x93\x02/*-/v1/{name=projects/*/locations/*/instances/*}\x12\xbf\x01\n\rStartInstance\x12/.google.cloud.notebooks.v1.StartInstanceRequest\x1a\x1d.google.longrunning.Operation\"^\xca\x41\x1d\n\x08Instance\x12\x11OperationMetadata\x82\xd3\xe4\x93\x02\x38\"3/v1/{name=projects/*/locations/*/instances/*}:start:\x01*\x12\xbc\x01\n\x0cStopInstance\x12..google.cloud.notebooks.v1.StopInstanceRequest\x1a\x1d.google.longrunning.Operation\"]\xca\x41\x1d\n\x08Instance\x12\x11OperationMetadata\x82\xd3\xe4\x93\x02\x37\"2/v1/{name=projects/*/locations/*/instances/*}:stop:\x01*\x12\xbf\x01\n\rResetInstance\x12/.google.cloud.notebooks.v1.ResetInstanceRequest\x1a\x1d.google.longrunning.Operation\"^\xca\x41\x1d\n\x08Instance\x12\x11OperationMetadata\x82\xd3\xe4\x93\x02\x38\"3/v1/{name=projects/*/locations/*/instances/*}:reset:\x01*\x12\xca\x01\n\x12ReportInstanceInfo\x12\x34.google.cloud.notebooks.v1.ReportInstanceInfoRequest\x1a\x1d.google.longrunning.Operation\"_\xca\x41\x1d\n\x08Instance\x12\x11OperationMetadata\x82\xd3\xe4\x93\x02\x39\"4/v1/{name=projects/*/locations/*/instances/*}:report:\x01*\x12\xdc\x01\n\x15IsInstanceUpgradeable\x12\x37.google.cloud.notebooks.v1.IsInstanceUpgradeableRequest\x1a\x38.google.cloud.notebooks.v1.IsInstanceUpgradeableResponse\"P\x82\xd3\xe4\x93\x02J\x12H/v1/{notebook_instance=projects/*/locations/*/instances/*}:isUpgradeable\x12\xce\x01\n\x11GetInstanceHealth\x12\x33.google.cloud.notebooks.v1.GetInstanceHealthRequest\x1a\x34.google.cloud.notebooks.v1.GetInstanceHealthResponse\"N\xda\x41\x04name\x82\xd3\xe4\x93\x02\x41\x12?/v1/{name=projects/*/locations/*/instances/*}:getInstanceHealth\x12\xc5\x01\n\x0fUpgradeInstance\x12\x31.google.cloud.notebooks.v1.UpgradeInstanceRequest\x1a\x1d.google.longrunning.Operation\"`\xca\x41\x1d\n\x08Instance\x12\x11OperationMetadata\x82\xd3\xe4\x93\x02:\"5/v1/{name=projects/*/locations/*/instances/*}:upgrade:\x01*\x12\xc8\x01\n\x10RollbackInstance\x12\x32.google.cloud.notebooks.v1.RollbackInstanceRequest\x1a\x1d.google.longrunning.Operation\"a\xca\x41\x1d\n\x08Instance\x12\x11OperationMetadata\x82\xd3\xe4\x93\x02;\"6/v1/{name=projects/*/locations/*/instances/*}:rollback:\x01*\x12\xe1\x01\n\x10\x44iagnoseInstance\x12\x32.google.cloud.notebooks.v1.DiagnoseInstanceRequest\x1a\x1d.google.longrunning.Operation\"z\xca\x41\x1d\n\x08Instance\x12\x11OperationMetadata\xda\x41\x16name,diagnostic_config\x82\xd3\xe4\x93\x02;\"6/v1/{name=projects/*/locations/*/instances/*}:diagnose:\x01*\x12\xdd\x01\n\x17UpgradeInstanceInternal\x12\x39.google.cloud.notebooks.v1.UpgradeInstanceInternalRequest\x1a\x1d.google.longrunning.Operation\"h\xca\x41\x1d\n\x08Instance\x12\x11OperationMetadata\x82\xd3\xe4\x93\x02\x42\"=/v1/{name=projects/*/locations/*/instances/*}:upgradeInternal:\x01*\x12\xbe\x01\n\x10ListEnvironments\x12\x32.google.cloud.notebooks.v1.ListEnvironmentsRequest\x1a\x33.google.cloud.notebooks.v1.ListEnvironmentsResponse\"A\xda\x41\x06parent\x82\xd3\xe4\x93\x02\x32\x12\x30/v1/{parent=projects/*/locations/*}/environments\x12\xab\x01\n\x0eGetEnvironment\x12\x30.google.cloud.notebooks.v1.GetEnvironmentRequest\x1a&.google.cloud.notebooks.v1.Environment\"?\xda\x41\x04name\x82\xd3\xe4\x93\x02\x32\x12\x30/v1/{name=projects/*/locations/*/environments/*}\x12\xf6\x01\n\x11\x43reateEnvironment\x12\x33.google.cloud.notebooks.v1.CreateEnvironmentRequest\x1a\x1d.google.longrunning.Operation\"\x8c\x01\xca\x41 \n\x0b\x45nvironment\x12\x11OperationMetadata\xda\x41!parent,environment,environment_id\x82\xd3\xe4\x93\x02?\"0/v1/{parent=projects/*/locations/*}/environments:\x0b\x65nvironment\x12\xd5\x01\n\x11\x44\x65leteEnvironment\x12\x33.google.cloud.notebooks.v1.DeleteEnvironmentRequest\x1a\x1d.google.longrunning.Operation\"l\xca\x41*\n\x15google.protobuf.Empty\x12\x11OperationMetadata\xda\x41\x04name\x82\xd3\xe4\x93\x02\x32*0/v1/{name=projects/*/locations/*/environments/*}\x12\xb2\x01\n\rListSchedules\x12/.google.cloud.notebooks.v1.ListSchedulesRequest\x1a\x30.google.cloud.notebooks.v1.ListSchedulesResponse\">\xda\x41\x06parent\x82\xd3\xe4\x93\x02/\x12-/v1/{parent=projects/*/locations/*}/schedules\x12\x9f\x01\n\x0bGetSchedule\x12-.google.cloud.notebooks.v1.GetScheduleRequest\x1a#.google.cloud.notebooks.v1.Schedule\"<\xda\x41\x04name\x82\xd3\xe4\x93\x02/\x12-/v1/{name=projects/*/locations/*/schedules/*}\x12\xcc\x01\n\x0e\x44\x65leteSchedule\x12\x30.google.cloud.notebooks.v1.DeleteScheduleRequest\x1a\x1d.google.longrunning.Operation\"i\xca\x41*\n\x15google.protobuf.Empty\x12\x11OperationMetadata\xda\x41\x04name\x82\xd3\xe4\x93\x02/*-/v1/{name=projects/*/locations/*/schedules/*}\x12\xe0\x01\n\x0e\x43reateSchedule\x12\x30.google.cloud.notebooks.v1.CreateScheduleRequest\x1a\x1d.google.longrunning.Operation\"}\xca\x41\x1d\n\x08Schedule\x12\x11OperationMetadata\xda\x41\x1bparent,schedule,schedule_id\x82\xd3\xe4\x93\x02\x39\"-/v1/{parent=projects/*/locations/*}/schedules:\x08schedule\x12\xc5\x01\n\x0fTriggerSchedule\x12\x31.google.cloud.notebooks.v1.TriggerScheduleRequest\x1a\x1d.google.longrunning.Operation\"`\xca\x41\x1d\n\x08Schedule\x12\x11OperationMetadata\x82\xd3\xe4\x93\x02:\"5/v1/{name=projects/*/locations/*/schedules/*}:trigger:\x01*\x12\xb6\x01\n\x0eListExecutions\x12\x30.google.cloud.notebooks.v1.ListExecutionsRequest\x1a\x31.google.cloud.notebooks.v1.ListExecutionsResponse\"?\xda\x41\x06parent\x82\xd3\xe4\x93\x02\x30\x12./v1/{parent=projects/*/locations/*}/executions\x12\xa3\x01\n\x0cGetExecution\x12..google.cloud.notebooks.v1.GetExecutionRequest\x1a$.google.cloud.notebooks.v1.Execution\"=\xda\x41\x04name\x82\xd3\xe4\x93\x02\x30\x12./v1/{name=projects/*/locations/*/executions/*}\x12\xcf\x01\n\x0f\x44\x65leteExecution\x12\x31.google.cloud.notebooks.v1.DeleteExecutionRequest\x1a\x1d.google.longrunning.Operation\"j\xca\x41*\n\x15google.protobuf.Empty\x12\x11OperationMetadata\xda\x41\x04name\x82\xd3\xe4\x93\x02\x30*./v1/{name=projects/*/locations/*/executions/*}\x12\xe8\x01\n\x0f\x43reateExecution\x12\x31.google.cloud.notebooks.v1.CreateExecutionRequest\x1a\x1d.google.longrunning.Operation\"\x82\x01\xca\x41\x1e\n\tExecution\x12\x11OperationMetadata\xda\x41\x1dparent,execution,execution_id\x82\xd3\xe4\x93\x02;\"./v1/{parent=projects/*/locations/*}/executions:\texecution\x1aL\xca\x41\x18notebooks.googleapis.com\xd2\x41.https://www.googleapis.com/auth/cloud-platformB\xc5\x01\n\x1d\x63om.google.cloud.notebooks.v1B\x0eNotebooksProtoP\x01Z;cloud.google.com/go/notebooks/apiv1/notebookspb;notebookspb\xaa\x02\x19Google.Cloud.Notebooks.V1\xca\x02\x19Google\\Cloud\\Notebooks\\V1\xea\x02\x1cGoogle::Cloud::Notebooks::V1b\x06proto3"

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
    ["google.cloud.notebooks.v1.Instance", "google/cloud/notebooks/v1/instance.proto"],
    ["google.cloud.notebooks.v1.InstanceConfig", "google/cloud/notebooks/v1/instance_config.proto"],
    ["google.cloud.notebooks.v1.DiagnosticConfig", "google/cloud/notebooks/v1/diagnostic_config.proto"],
    ["google.cloud.notebooks.v1.Environment", "google/cloud/notebooks/v1/environment.proto"],
    ["google.cloud.notebooks.v1.Schedule", "google/cloud/notebooks/v1/schedule.proto"],
    ["google.cloud.notebooks.v1.Execution", "google/cloud/notebooks/v1/execution.proto"],
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
      module V1
        OperationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v1.OperationMetadata").msgclass
        ListInstancesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v1.ListInstancesRequest").msgclass
        ListInstancesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v1.ListInstancesResponse").msgclass
        GetInstanceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v1.GetInstanceRequest").msgclass
        CreateInstanceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v1.CreateInstanceRequest").msgclass
        RegisterInstanceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v1.RegisterInstanceRequest").msgclass
        SetInstanceAcceleratorRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v1.SetInstanceAcceleratorRequest").msgclass
        SetInstanceMachineTypeRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v1.SetInstanceMachineTypeRequest").msgclass
        UpdateInstanceConfigRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v1.UpdateInstanceConfigRequest").msgclass
        SetInstanceLabelsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v1.SetInstanceLabelsRequest").msgclass
        UpdateInstanceMetadataItemsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v1.UpdateInstanceMetadataItemsRequest").msgclass
        UpdateInstanceMetadataItemsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v1.UpdateInstanceMetadataItemsResponse").msgclass
        UpdateShieldedInstanceConfigRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v1.UpdateShieldedInstanceConfigRequest").msgclass
        DeleteInstanceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v1.DeleteInstanceRequest").msgclass
        StartInstanceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v1.StartInstanceRequest").msgclass
        StopInstanceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v1.StopInstanceRequest").msgclass
        ResetInstanceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v1.ResetInstanceRequest").msgclass
        ReportInstanceInfoRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v1.ReportInstanceInfoRequest").msgclass
        IsInstanceUpgradeableRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v1.IsInstanceUpgradeableRequest").msgclass
        IsInstanceUpgradeableResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v1.IsInstanceUpgradeableResponse").msgclass
        GetInstanceHealthRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v1.GetInstanceHealthRequest").msgclass
        GetInstanceHealthResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v1.GetInstanceHealthResponse").msgclass
        GetInstanceHealthResponse::HealthState = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v1.GetInstanceHealthResponse.HealthState").enummodule
        UpgradeInstanceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v1.UpgradeInstanceRequest").msgclass
        RollbackInstanceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v1.RollbackInstanceRequest").msgclass
        UpgradeInstanceInternalRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v1.UpgradeInstanceInternalRequest").msgclass
        ListEnvironmentsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v1.ListEnvironmentsRequest").msgclass
        DiagnoseInstanceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v1.DiagnoseInstanceRequest").msgclass
        ListEnvironmentsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v1.ListEnvironmentsResponse").msgclass
        GetEnvironmentRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v1.GetEnvironmentRequest").msgclass
        CreateEnvironmentRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v1.CreateEnvironmentRequest").msgclass
        DeleteEnvironmentRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v1.DeleteEnvironmentRequest").msgclass
        ListSchedulesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v1.ListSchedulesRequest").msgclass
        ListSchedulesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v1.ListSchedulesResponse").msgclass
        GetScheduleRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v1.GetScheduleRequest").msgclass
        DeleteScheduleRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v1.DeleteScheduleRequest").msgclass
        CreateScheduleRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v1.CreateScheduleRequest").msgclass
        TriggerScheduleRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v1.TriggerScheduleRequest").msgclass
        ListExecutionsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v1.ListExecutionsRequest").msgclass
        ListExecutionsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v1.ListExecutionsResponse").msgclass
        GetExecutionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v1.GetExecutionRequest").msgclass
        DeleteExecutionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v1.DeleteExecutionRequest").msgclass
        CreateExecutionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v1.CreateExecutionRequest").msgclass
        UpgradeType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v1.UpgradeType").enummodule
      end
    end
  end
end
