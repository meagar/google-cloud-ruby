# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/gkebackup/v1/gkebackup.proto for package 'Google.Cloud.GkeBackup.V1'
# Original file comments:
# Copyright 2022 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

require 'grpc'
require 'google/cloud/gkebackup/v1/gkebackup_pb'

module Google
  module Cloud
    module GkeBackup
      module V1
        module BackupForGKE
          # BackupForGKE allows Kubernetes administrators to configure, execute, and
          # manage backup and restore operations for their GKE clusters.
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.cloud.gkebackup.v1.BackupForGKE'

            # Creates a new BackupPlan in a given location.
            rpc :CreateBackupPlan, ::Google::Cloud::GkeBackup::V1::CreateBackupPlanRequest, ::Google::Longrunning::Operation
            # Lists BackupPlans in a given location.
            rpc :ListBackupPlans, ::Google::Cloud::GkeBackup::V1::ListBackupPlansRequest, ::Google::Cloud::GkeBackup::V1::ListBackupPlansResponse
            # Retrieve the details of a single BackupPlan.
            rpc :GetBackupPlan, ::Google::Cloud::GkeBackup::V1::GetBackupPlanRequest, ::Google::Cloud::GkeBackup::V1::BackupPlan
            # Update a BackupPlan.
            rpc :UpdateBackupPlan, ::Google::Cloud::GkeBackup::V1::UpdateBackupPlanRequest, ::Google::Longrunning::Operation
            # Deletes an existing BackupPlan.
            rpc :DeleteBackupPlan, ::Google::Cloud::GkeBackup::V1::DeleteBackupPlanRequest, ::Google::Longrunning::Operation
            # Creates a Backup for the given BackupPlan.
            rpc :CreateBackup, ::Google::Cloud::GkeBackup::V1::CreateBackupRequest, ::Google::Longrunning::Operation
            # Lists the Backups for a given BackupPlan.
            rpc :ListBackups, ::Google::Cloud::GkeBackup::V1::ListBackupsRequest, ::Google::Cloud::GkeBackup::V1::ListBackupsResponse
            # Retrieve the details of a single Backup.
            rpc :GetBackup, ::Google::Cloud::GkeBackup::V1::GetBackupRequest, ::Google::Cloud::GkeBackup::V1::Backup
            # Update a Backup.
            rpc :UpdateBackup, ::Google::Cloud::GkeBackup::V1::UpdateBackupRequest, ::Google::Longrunning::Operation
            # Deletes an existing Backup.
            rpc :DeleteBackup, ::Google::Cloud::GkeBackup::V1::DeleteBackupRequest, ::Google::Longrunning::Operation
            # Lists the VolumeBackups for a given Backup.
            rpc :ListVolumeBackups, ::Google::Cloud::GkeBackup::V1::ListVolumeBackupsRequest, ::Google::Cloud::GkeBackup::V1::ListVolumeBackupsResponse
            # Retrieve the details of a single VolumeBackup.
            rpc :GetVolumeBackup, ::Google::Cloud::GkeBackup::V1::GetVolumeBackupRequest, ::Google::Cloud::GkeBackup::V1::VolumeBackup
            # Creates a new RestorePlan in a given location.
            rpc :CreateRestorePlan, ::Google::Cloud::GkeBackup::V1::CreateRestorePlanRequest, ::Google::Longrunning::Operation
            # Lists RestorePlans in a given location.
            rpc :ListRestorePlans, ::Google::Cloud::GkeBackup::V1::ListRestorePlansRequest, ::Google::Cloud::GkeBackup::V1::ListRestorePlansResponse
            # Retrieve the details of a single RestorePlan.
            rpc :GetRestorePlan, ::Google::Cloud::GkeBackup::V1::GetRestorePlanRequest, ::Google::Cloud::GkeBackup::V1::RestorePlan
            # Update a RestorePlan.
            rpc :UpdateRestorePlan, ::Google::Cloud::GkeBackup::V1::UpdateRestorePlanRequest, ::Google::Longrunning::Operation
            # Deletes an existing RestorePlan.
            rpc :DeleteRestorePlan, ::Google::Cloud::GkeBackup::V1::DeleteRestorePlanRequest, ::Google::Longrunning::Operation
            # Creates a new Restore for the given RestorePlan.
            rpc :CreateRestore, ::Google::Cloud::GkeBackup::V1::CreateRestoreRequest, ::Google::Longrunning::Operation
            # Lists the Restores for a given RestorePlan.
            rpc :ListRestores, ::Google::Cloud::GkeBackup::V1::ListRestoresRequest, ::Google::Cloud::GkeBackup::V1::ListRestoresResponse
            # Retrieves the details of a single Restore.
            rpc :GetRestore, ::Google::Cloud::GkeBackup::V1::GetRestoreRequest, ::Google::Cloud::GkeBackup::V1::Restore
            # Update a Restore.
            rpc :UpdateRestore, ::Google::Cloud::GkeBackup::V1::UpdateRestoreRequest, ::Google::Longrunning::Operation
            # Deletes an existing Restore.
            rpc :DeleteRestore, ::Google::Cloud::GkeBackup::V1::DeleteRestoreRequest, ::Google::Longrunning::Operation
            # Lists the VolumeRestores for a given Restore.
            rpc :ListVolumeRestores, ::Google::Cloud::GkeBackup::V1::ListVolumeRestoresRequest, ::Google::Cloud::GkeBackup::V1::ListVolumeRestoresResponse
            # Retrieve the details of a single VolumeRestore.
            rpc :GetVolumeRestore, ::Google::Cloud::GkeBackup::V1::GetVolumeRestoreRequest, ::Google::Cloud::GkeBackup::V1::VolumeRestore
            # Retrieve the link to the backupIndex.
            rpc :GetBackupIndexDownloadUrl, ::Google::Cloud::GkeBackup::V1::GetBackupIndexDownloadUrlRequest, ::Google::Cloud::GkeBackup::V1::GetBackupIndexDownloadUrlResponse
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end
