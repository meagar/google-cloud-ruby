# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/osconfig/v1/patch_jobs.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/osconfig/v1/osconfig_common_pb'
require 'google/protobuf/duration_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n)google/cloud/osconfig/v1/patch_jobs.proto\x12\x18google.cloud.osconfig.v1\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a.google/cloud/osconfig/v1/osconfig_common.proto\x1a\x1egoogle/protobuf/duration.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\x8b\x03\n\x16\x45xecutePatchJobRequest\x12\x44\n\x06parent\x18\x01 \x01(\tB4\xe2\x41\x01\x02\xfa\x41-\n+cloudresourcemanager.googleapis.com/Project\x12\x13\n\x0b\x64\x65scription\x18\x02 \x01(\t\x12L\n\x0finstance_filter\x18\x07 \x01(\x0b\x32-.google.cloud.osconfig.v1.PatchInstanceFilterB\x04\xe2\x41\x01\x02\x12;\n\x0cpatch_config\x18\x04 \x01(\x0b\x32%.google.cloud.osconfig.v1.PatchConfig\x12+\n\x08\x64uration\x18\x05 \x01(\x0b\x32\x19.google.protobuf.Duration\x12\x0f\n\x07\x64ry_run\x18\x06 \x01(\x08\x12\x14\n\x0c\x64isplay_name\x18\x08 \x01(\t\x12\x37\n\x07rollout\x18\t \x01(\x0b\x32&.google.cloud.osconfig.v1.PatchRollout\"M\n\x12GetPatchJobRequest\x12\x37\n\x04name\x18\x01 \x01(\tB)\xe2\x41\x01\x02\xfa\x41\"\n osconfig.googleapis.com/PatchJob\"\x96\x01\n\"ListPatchJobInstanceDetailsRequest\x12\x39\n\x06parent\x18\x01 \x01(\tB)\xe2\x41\x01\x02\xfa\x41\"\n osconfig.googleapis.com/PatchJob\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\x12\x0e\n\x06\x66ilter\x18\x04 \x01(\t\"\x95\x01\n#ListPatchJobInstanceDetailsResponse\x12U\n\x1apatch_job_instance_details\x18\x01 \x03(\x0b\x32\x31.google.cloud.osconfig.v1.PatchJobInstanceDetails\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"\xd6\x01\n\x17PatchJobInstanceDetails\x12\x32\n\x04name\x18\x01 \x01(\tB$\xfa\x41!\n\x1f\x63ompute.googleapis.com/Instance\x12\x1a\n\x12instance_system_id\x18\x02 \x01(\t\x12<\n\x05state\x18\x03 \x01(\x0e\x32-.google.cloud.osconfig.v1.Instance.PatchState\x12\x16\n\x0e\x66\x61ilure_reason\x18\x04 \x01(\t\x12\x15\n\rattempt_count\x18\x05 \x01(\x03\"\x93\x01\n\x14ListPatchJobsRequest\x12\x44\n\x06parent\x18\x01 \x01(\tB4\xe2\x41\x01\x02\xfa\x41-\n+cloudresourcemanager.googleapis.com/Project\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\x12\x0e\n\x06\x66ilter\x18\x04 \x01(\t\"h\n\x15ListPatchJobsResponse\x12\x36\n\npatch_jobs\x18\x01 \x03(\x0b\x32\".google.cloud.osconfig.v1.PatchJob\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"\xdd\x0b\n\x08PatchJob\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\x14\n\x0c\x64isplay_name\x18\x0e \x01(\t\x12\x13\n\x0b\x64\x65scription\x18\x02 \x01(\t\x12/\n\x0b\x63reate_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12/\n\x0bupdate_time\x18\x04 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12\x37\n\x05state\x18\x05 \x01(\x0e\x32(.google.cloud.osconfig.v1.PatchJob.State\x12\x46\n\x0finstance_filter\x18\r \x01(\x0b\x32-.google.cloud.osconfig.v1.PatchInstanceFilter\x12;\n\x0cpatch_config\x18\x07 \x01(\x0b\x32%.google.cloud.osconfig.v1.PatchConfig\x12+\n\x08\x64uration\x18\x08 \x01(\x0b\x32\x19.google.protobuf.Duration\x12[\n\x18instance_details_summary\x18\t \x01(\x0b\x32\x39.google.cloud.osconfig.v1.PatchJob.InstanceDetailsSummary\x12\x0f\n\x07\x64ry_run\x18\n \x01(\x08\x12\x15\n\rerror_message\x18\x0b \x01(\t\x12\x18\n\x10percent_complete\x18\x0c \x01(\x01\x12J\n\x10patch_deployment\x18\x0f \x01(\tB0\xe2\x41\x01\x03\xfa\x41)\n\'osconfig.googleapis.com/PatchDeployment\x12\x37\n\x07rollout\x18\x10 \x01(\x0b\x32&.google.cloud.osconfig.v1.PatchRollout\x1a\xbd\x04\n\x16InstanceDetailsSummary\x12\x1e\n\x16pending_instance_count\x18\x01 \x01(\x03\x12\x1f\n\x17inactive_instance_count\x18\x02 \x01(\x03\x12\x1f\n\x17notified_instance_count\x18\x03 \x01(\x03\x12\x1e\n\x16started_instance_count\x18\x04 \x01(\x03\x12*\n\"downloading_patches_instance_count\x18\x05 \x01(\x03\x12\'\n\x1f\x61pplying_patches_instance_count\x18\x06 \x01(\x03\x12 \n\x18rebooting_instance_count\x18\x07 \x01(\x03\x12 \n\x18succeeded_instance_count\x18\x08 \x01(\x03\x12\x30\n(succeeded_reboot_required_instance_count\x18\t \x01(\x03\x12\x1d\n\x15\x66\x61iled_instance_count\x18\n \x01(\x03\x12\x1c\n\x14\x61\x63ked_instance_count\x18\x0b \x01(\x03\x12 \n\x18timed_out_instance_count\x18\x0c \x01(\x03\x12%\n\x1dpre_patch_step_instance_count\x18\r \x01(\x03\x12&\n\x1epost_patch_step_instance_count\x18\x0e \x01(\x03\x12(\n no_agent_detected_instance_count\x18\x0f \x01(\x03\"\x95\x01\n\x05State\x12\x15\n\x11STATE_UNSPECIFIED\x10\x00\x12\x0b\n\x07STARTED\x10\x01\x12\x13\n\x0fINSTANCE_LOOKUP\x10\x02\x12\x0c\n\x08PATCHING\x10\x03\x12\r\n\tSUCCEEDED\x10\x04\x12\x19\n\x15\x43OMPLETED_WITH_ERRORS\x10\x05\x12\x0c\n\x08\x43\x41NCELED\x10\x06\x12\r\n\tTIMED_OUT\x10\x07:O\xea\x41L\n osconfig.googleapis.com/PatchJob\x12(projects/{project}/patchJobs/{patch_job}\"\xd6\x04\n\x0bPatchConfig\x12I\n\rreboot_config\x18\x01 \x01(\x0e\x32\x32.google.cloud.osconfig.v1.PatchConfig.RebootConfig\x12\x32\n\x03\x61pt\x18\x03 \x01(\x0b\x32%.google.cloud.osconfig.v1.AptSettings\x12\x32\n\x03yum\x18\x04 \x01(\x0b\x32%.google.cloud.osconfig.v1.YumSettings\x12\x32\n\x03goo\x18\x05 \x01(\x0b\x32%.google.cloud.osconfig.v1.GooSettings\x12\x38\n\x06zypper\x18\x06 \x01(\x0b\x32(.google.cloud.osconfig.v1.ZypperSettings\x12G\n\x0ewindows_update\x18\x07 \x01(\x0b\x32/.google.cloud.osconfig.v1.WindowsUpdateSettings\x12\x34\n\x08pre_step\x18\x08 \x01(\x0b\x32\".google.cloud.osconfig.v1.ExecStep\x12\x35\n\tpost_step\x18\t \x01(\x0b\x32\".google.cloud.osconfig.v1.ExecStep\x12\x1d\n\x15mig_instances_allowed\x18\n \x01(\x08\"Q\n\x0cRebootConfig\x12\x1d\n\x19REBOOT_CONFIG_UNSPECIFIED\x10\x00\x12\x0b\n\x07\x44\x45\x46\x41ULT\x10\x01\x12\n\n\x06\x41LWAYS\x10\x02\x12\t\n\x05NEVER\x10\x03\"\xce\x02\n\x08Instance\"\xc1\x02\n\nPatchState\x12\x1b\n\x17PATCH_STATE_UNSPECIFIED\x10\x00\x12\x0b\n\x07PENDING\x10\x01\x12\x0c\n\x08INACTIVE\x10\x02\x12\x0c\n\x08NOTIFIED\x10\x03\x12\x0b\n\x07STARTED\x10\x04\x12\x17\n\x13\x44OWNLOADING_PATCHES\x10\x05\x12\x14\n\x10\x41PPLYING_PATCHES\x10\x06\x12\r\n\tREBOOTING\x10\x07\x12\r\n\tSUCCEEDED\x10\x08\x12\x1d\n\x19SUCCEEDED_REBOOT_REQUIRED\x10\t\x12\n\n\x06\x46\x41ILED\x10\n\x12\t\n\x05\x41\x43KED\x10\x0b\x12\r\n\tTIMED_OUT\x10\x0c\x12\x1a\n\x16RUNNING_PRE_PATCH_STEP\x10\r\x12\x1b\n\x17RUNNING_POST_PATCH_STEP\x10\x0e\x12\x15\n\x11NO_AGENT_DETECTED\x10\x0f\"P\n\x15\x43\x61ncelPatchJobRequest\x12\x37\n\x04name\x18\x01 \x01(\tB)\xe2\x41\x01\x02\xfa\x41\"\n osconfig.googleapis.com/PatchJob\"\xaa\x01\n\x0b\x41ptSettings\x12\x38\n\x04type\x18\x01 \x01(\x0e\x32*.google.cloud.osconfig.v1.AptSettings.Type\x12\x10\n\x08\x65xcludes\x18\x02 \x03(\t\x12\x1a\n\x12\x65xclusive_packages\x18\x03 \x03(\t\"3\n\x04Type\x12\x14\n\x10TYPE_UNSPECIFIED\x10\x00\x12\x08\n\x04\x44IST\x10\x01\x12\x0b\n\x07UPGRADE\x10\x02\"^\n\x0bYumSettings\x12\x10\n\x08security\x18\x01 \x01(\x08\x12\x0f\n\x07minimal\x18\x02 \x01(\x08\x12\x10\n\x08\x65xcludes\x18\x03 \x03(\t\x12\x1a\n\x12\x65xclusive_packages\x18\x04 \x03(\t\"\r\n\x0bGooSettings\"\x91\x01\n\x0eZypperSettings\x12\x15\n\rwith_optional\x18\x01 \x01(\x08\x12\x13\n\x0bwith_update\x18\x02 \x01(\x08\x12\x12\n\ncategories\x18\x03 \x03(\t\x12\x12\n\nseverities\x18\x04 \x03(\t\x12\x10\n\x08\x65xcludes\x18\x05 \x03(\t\x12\x19\n\x11\x65xclusive_patches\x18\x06 \x03(\t\"\xd5\x02\n\x15WindowsUpdateSettings\x12W\n\x0f\x63lassifications\x18\x01 \x03(\x0e\x32>.google.cloud.osconfig.v1.WindowsUpdateSettings.Classification\x12\x10\n\x08\x65xcludes\x18\x02 \x03(\t\x12\x19\n\x11\x65xclusive_patches\x18\x03 \x03(\t\"\xb5\x01\n\x0e\x43lassification\x12\x1e\n\x1a\x43LASSIFICATION_UNSPECIFIED\x10\x00\x12\x0c\n\x08\x43RITICAL\x10\x01\x12\x0c\n\x08SECURITY\x10\x02\x12\x0e\n\nDEFINITION\x10\x03\x12\n\n\x06\x44RIVER\x10\x04\x12\x10\n\x0c\x46\x45\x41TURE_PACK\x10\x05\x12\x10\n\x0cSERVICE_PACK\x10\x06\x12\x08\n\x04TOOL\x10\x07\x12\x11\n\rUPDATE_ROLLUP\x10\x08\x12\n\n\x06UPDATE\x10\t\"\xa0\x01\n\x08\x45xecStep\x12H\n\x16linux_exec_step_config\x18\x01 \x01(\x0b\x32(.google.cloud.osconfig.v1.ExecStepConfig\x12J\n\x18windows_exec_step_config\x18\x02 \x01(\x0b\x32(.google.cloud.osconfig.v1.ExecStepConfig\"\xa0\x02\n\x0e\x45xecStepConfig\x12\x14\n\nlocal_path\x18\x01 \x01(\tH\x00\x12\x39\n\ngcs_object\x18\x02 \x01(\x0b\x32#.google.cloud.osconfig.v1.GcsObjectH\x00\x12\x1d\n\x15\x61llowed_success_codes\x18\x03 \x03(\x05\x12I\n\x0binterpreter\x18\x04 \x01(\x0e\x32\x34.google.cloud.osconfig.v1.ExecStepConfig.Interpreter\"E\n\x0bInterpreter\x12\x1b\n\x17INTERPRETER_UNSPECIFIED\x10\x00\x12\t\n\x05SHELL\x10\x01\x12\x0e\n\nPOWERSHELL\x10\x02\x42\x0c\n\nexecutable\"X\n\tGcsObject\x12\x14\n\x06\x62ucket\x18\x01 \x01(\tB\x04\xe2\x41\x01\x02\x12\x14\n\x06object\x18\x02 \x01(\tB\x04\xe2\x41\x01\x02\x12\x1f\n\x11generation_number\x18\x03 \x01(\x03\x42\x04\xe2\x41\x01\x02\"\xc8\x02\n\x13PatchInstanceFilter\x12\x0b\n\x03\x61ll\x18\x01 \x01(\x08\x12N\n\x0cgroup_labels\x18\x02 \x03(\x0b\x32\x38.google.cloud.osconfig.v1.PatchInstanceFilter.GroupLabel\x12\r\n\x05zones\x18\x03 \x03(\t\x12\x11\n\tinstances\x18\x04 \x03(\t\x12\x1e\n\x16instance_name_prefixes\x18\x05 \x03(\t\x1a\x91\x01\n\nGroupLabel\x12T\n\x06labels\x18\x01 \x03(\x0b\x32\x44.google.cloud.osconfig.v1.PatchInstanceFilter.GroupLabel.LabelsEntry\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"\xd4\x01\n\x0cPatchRollout\x12\x39\n\x04mode\x18\x01 \x01(\x0e\x32+.google.cloud.osconfig.v1.PatchRollout.Mode\x12\x43\n\x11\x64isruption_budget\x18\x02 \x01(\x0b\x32(.google.cloud.osconfig.v1.FixedOrPercent\"D\n\x04Mode\x12\x14\n\x10MODE_UNSPECIFIED\x10\x00\x12\x10\n\x0cZONE_BY_ZONE\x10\x01\x12\x14\n\x10\x43ONCURRENT_ZONES\x10\x02\x42\xb7\x01\n\x1c\x63om.google.cloud.osconfig.v1B\tPatchJobsZ8cloud.google.com/go/osconfig/apiv1/osconfigpb;osconfigpb\xaa\x02\x18Google.Cloud.OsConfig.V1\xca\x02\x18Google\\Cloud\\OsConfig\\V1\xea\x02\x1bGoogle::Cloud::OsConfig::V1b\x06proto3"

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
    ["google.protobuf.Duration", "google/protobuf/duration.proto"],
    ["google.protobuf.Timestamp", "google/protobuf/timestamp.proto"],
    ["google.cloud.osconfig.v1.FixedOrPercent", "google/cloud/osconfig/v1/osconfig_common.proto"],
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
    module OsConfig
      module V1
        ExecutePatchJobRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1.ExecutePatchJobRequest").msgclass
        GetPatchJobRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1.GetPatchJobRequest").msgclass
        ListPatchJobInstanceDetailsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1.ListPatchJobInstanceDetailsRequest").msgclass
        ListPatchJobInstanceDetailsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1.ListPatchJobInstanceDetailsResponse").msgclass
        PatchJobInstanceDetails = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1.PatchJobInstanceDetails").msgclass
        ListPatchJobsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1.ListPatchJobsRequest").msgclass
        ListPatchJobsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1.ListPatchJobsResponse").msgclass
        PatchJob = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1.PatchJob").msgclass
        PatchJob::InstanceDetailsSummary = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1.PatchJob.InstanceDetailsSummary").msgclass
        PatchJob::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1.PatchJob.State").enummodule
        PatchConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1.PatchConfig").msgclass
        PatchConfig::RebootConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1.PatchConfig.RebootConfig").enummodule
        Instance = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1.Instance").msgclass
        Instance::PatchState = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1.Instance.PatchState").enummodule
        CancelPatchJobRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1.CancelPatchJobRequest").msgclass
        AptSettings = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1.AptSettings").msgclass
        AptSettings::Type = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1.AptSettings.Type").enummodule
        YumSettings = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1.YumSettings").msgclass
        GooSettings = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1.GooSettings").msgclass
        ZypperSettings = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1.ZypperSettings").msgclass
        WindowsUpdateSettings = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1.WindowsUpdateSettings").msgclass
        WindowsUpdateSettings::Classification = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1.WindowsUpdateSettings.Classification").enummodule
        ExecStep = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1.ExecStep").msgclass
        ExecStepConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1.ExecStepConfig").msgclass
        ExecStepConfig::Interpreter = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1.ExecStepConfig.Interpreter").enummodule
        GcsObject = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1.GcsObject").msgclass
        PatchInstanceFilter = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1.PatchInstanceFilter").msgclass
        PatchInstanceFilter::GroupLabel = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1.PatchInstanceFilter.GroupLabel").msgclass
        PatchRollout = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1.PatchRollout").msgclass
        PatchRollout::Mode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1.PatchRollout.Mode").enummodule
      end
    end
  end
end
