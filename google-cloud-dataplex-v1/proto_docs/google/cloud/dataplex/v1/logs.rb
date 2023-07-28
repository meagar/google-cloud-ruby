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
    module Dataplex
      module V1
        # The payload associated with Discovery data processing.
        # @!attribute [rw] message
        #   @return [::String]
        #     The log message.
        # @!attribute [rw] lake_id
        #   @return [::String]
        #     The id of the associated lake.
        # @!attribute [rw] zone_id
        #   @return [::String]
        #     The id of the associated zone.
        # @!attribute [rw] asset_id
        #   @return [::String]
        #     The id of the associated asset.
        # @!attribute [rw] data_location
        #   @return [::String]
        #     The data location associated with the event.
        # @!attribute [rw] type
        #   @return [::Google::Cloud::Dataplex::V1::DiscoveryEvent::EventType]
        #     The type of the event being logged.
        # @!attribute [rw] config
        #   @return [::Google::Cloud::Dataplex::V1::DiscoveryEvent::ConfigDetails]
        #     Details about discovery configuration in effect.
        # @!attribute [rw] entity
        #   @return [::Google::Cloud::Dataplex::V1::DiscoveryEvent::EntityDetails]
        #     Details about the entity associated with the event.
        # @!attribute [rw] partition
        #   @return [::Google::Cloud::Dataplex::V1::DiscoveryEvent::PartitionDetails]
        #     Details about the partition associated with the event.
        # @!attribute [rw] action
        #   @return [::Google::Cloud::Dataplex::V1::DiscoveryEvent::ActionDetails]
        #     Details about the action associated with the event.
        class DiscoveryEvent
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Details about configuration events.
          # @!attribute [rw] parameters
          #   @return [::Google::Protobuf::Map{::String => ::String}]
          #     A list of discovery configuration parameters in effect.
          #     The keys are the field paths within DiscoverySpec.
          #     Eg. includePatterns, excludePatterns, csvOptions.disableTypeInference,
          #     etc.
          class ConfigDetails
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # @!attribute [rw] key
            #   @return [::String]
            # @!attribute [rw] value
            #   @return [::String]
            class ParametersEntry
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end
          end

          # Details about the entity.
          # @!attribute [rw] entity
          #   @return [::String]
          #     The name of the entity resource.
          #     The name is the fully-qualified resource name.
          # @!attribute [rw] type
          #   @return [::Google::Cloud::Dataplex::V1::DiscoveryEvent::EntityType]
          #     The type of the entity resource.
          class EntityDetails
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Details about the partition.
          # @!attribute [rw] partition
          #   @return [::String]
          #     The name to the partition resource.
          #     The name is the fully-qualified resource name.
          # @!attribute [rw] entity
          #   @return [::String]
          #     The name to the containing entity resource.
          #     The name is the fully-qualified resource name.
          # @!attribute [rw] type
          #   @return [::Google::Cloud::Dataplex::V1::DiscoveryEvent::EntityType]
          #     The type of the containing entity resource.
          # @!attribute [rw] sampled_data_locations
          #   @return [::Array<::String>]
          #     The locations of the data items (e.g., a Cloud Storage objects) sampled
          #     for metadata inference.
          class PartitionDetails
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Details about the action.
          # @!attribute [rw] type
          #   @return [::String]
          #     The type of action.
          #     Eg. IncompatibleDataSchema, InvalidDataFormat
          class ActionDetails
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The type of the event.
          module EventType
            # An unspecified event type.
            EVENT_TYPE_UNSPECIFIED = 0

            # An event representing discovery configuration in effect.
            CONFIG = 1

            # An event representing a metadata entity being created.
            ENTITY_CREATED = 2

            # An event representing a metadata entity being updated.
            ENTITY_UPDATED = 3

            # An event representing a metadata entity being deleted.
            ENTITY_DELETED = 4

            # An event representing a partition being created.
            PARTITION_CREATED = 5

            # An event representing a partition being updated.
            PARTITION_UPDATED = 6

            # An event representing a partition being deleted.
            PARTITION_DELETED = 7
          end

          # The type of the entity.
          module EntityType
            # An unspecified event type.
            ENTITY_TYPE_UNSPECIFIED = 0

            # Entities representing structured data.
            TABLE = 1

            # Entities representing unstructured data.
            FILESET = 2
          end
        end

        # The payload associated with Job logs that contains events describing jobs
        # that have run within a Lake.
        # @!attribute [rw] message
        #   @return [::String]
        #     The log message.
        # @!attribute [rw] job_id
        #   @return [::String]
        #     The unique id identifying the job.
        # @!attribute [rw] start_time
        #   @return [::Google::Protobuf::Timestamp]
        #     The time when the job started running.
        # @!attribute [rw] end_time
        #   @return [::Google::Protobuf::Timestamp]
        #     The time when the job ended running.
        # @!attribute [rw] state
        #   @return [::Google::Cloud::Dataplex::V1::JobEvent::State]
        #     The job state on completion.
        # @!attribute [rw] retries
        #   @return [::Integer]
        #     The number of retries.
        # @!attribute [rw] type
        #   @return [::Google::Cloud::Dataplex::V1::JobEvent::Type]
        #     The type of the job.
        # @!attribute [rw] service
        #   @return [::Google::Cloud::Dataplex::V1::JobEvent::Service]
        #     The service used to execute the job.
        # @!attribute [rw] service_job
        #   @return [::String]
        #     The reference to the job within the service.
        # @!attribute [rw] execution_trigger
        #   @return [::Google::Cloud::Dataplex::V1::JobEvent::ExecutionTrigger]
        #     Job execution trigger.
        class JobEvent
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # The type of the job.
          module Type
            # Unspecified job type.
            TYPE_UNSPECIFIED = 0

            # Spark jobs.
            SPARK = 1

            # Notebook jobs.
            NOTEBOOK = 2
          end

          # The completion status of the job.
          module State
            # Unspecified job state.
            STATE_UNSPECIFIED = 0

            # Job successfully completed.
            SUCCEEDED = 1

            # Job was unsuccessful.
            FAILED = 2

            # Job was cancelled by the user.
            CANCELLED = 3

            # Job was cancelled or aborted via the service executing the job.
            ABORTED = 4
          end

          # The service used to execute the job.
          module Service
            # Unspecified service.
            SERVICE_UNSPECIFIED = 0

            # Cloud Dataproc.
            DATAPROC = 1
          end

          # Job Execution trigger.
          module ExecutionTrigger
            # The job execution trigger is unspecified.
            EXECUTION_TRIGGER_UNSPECIFIED = 0

            # The job was triggered by Dataplex based on trigger spec from task
            # definition.
            TASK_CONFIG = 1

            # The job was triggered by the explicit call of Task API.
            RUN_REQUEST = 2
          end
        end

        # These messages contain information about sessions within an environment.
        # The monitored resource is 'Environment'.
        # @!attribute [rw] message
        #   @return [::String]
        #     The log message.
        # @!attribute [rw] user_id
        #   @return [::String]
        #     The information about the user that created the session. It will be the
        #     email address of the user.
        # @!attribute [rw] session_id
        #   @return [::String]
        #     Unique identifier for the session.
        # @!attribute [rw] type
        #   @return [::Google::Cloud::Dataplex::V1::SessionEvent::EventType]
        #     The type of the event.
        # @!attribute [rw] query
        #   @return [::Google::Cloud::Dataplex::V1::SessionEvent::QueryDetail]
        #     The execution details of the query.
        # @!attribute [rw] event_succeeded
        #   @return [::Boolean]
        #     The status of the event.
        # @!attribute [rw] fast_startup_enabled
        #   @return [::Boolean]
        #     If the session is associated with an environment with fast startup enabled,
        #     and was created before being assigned to a user.
        # @!attribute [rw] unassigned_duration
        #   @return [::Google::Protobuf::Duration]
        #     The idle duration of a warm pooled session before it is assigned to user.
        class SessionEvent
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Execution details of the query.
          # @!attribute [rw] query_id
          #   @return [::String]
          #     The unique Query id identifying the query.
          # @!attribute [rw] query_text
          #   @return [::String]
          #     The query text executed.
          # @!attribute [rw] engine
          #   @return [::Google::Cloud::Dataplex::V1::SessionEvent::QueryDetail::Engine]
          #     Query Execution engine.
          # @!attribute [rw] duration
          #   @return [::Google::Protobuf::Duration]
          #     Time taken for execution of the query.
          # @!attribute [rw] result_size_bytes
          #   @return [::Integer]
          #     The size of results the query produced.
          # @!attribute [rw] data_processed_bytes
          #   @return [::Integer]
          #     The data processed by the query.
          class QueryDetail
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # Query Execution engine.
            module Engine
              # An unspecified Engine type.
              ENGINE_UNSPECIFIED = 0

              # Spark-sql engine is specified in Query.
              SPARK_SQL = 1

              # BigQuery engine is specified in Query.
              BIGQUERY = 2
            end
          end

          # The type of the event.
          module EventType
            # An unspecified event type.
            EVENT_TYPE_UNSPECIFIED = 0

            # Event when the session is assigned to a user.
            START = 1

            # Event for stop of a session.
            STOP = 2

            # Query events in the session.
            QUERY = 3

            # Event for creation of a cluster. It is not yet assigned to a user.
            # This comes before START in the sequence
            CREATE = 4
          end
        end

        # These messages contain information about the execution of a datascan.
        # The monitored resource is 'DataScan'
        # Next ID: 13
        # @!attribute [rw] data_source
        #   @return [::String]
        #     The data source of the data scan
        # @!attribute [rw] job_id
        #   @return [::String]
        #     The identifier of the specific data scan job this log entry is for.
        # @!attribute [rw] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     The time when the data scan job was created.
        # @!attribute [rw] start_time
        #   @return [::Google::Protobuf::Timestamp]
        #     The time when the data scan job started to run.
        # @!attribute [rw] end_time
        #   @return [::Google::Protobuf::Timestamp]
        #     The time when the data scan job finished.
        # @!attribute [rw] type
        #   @return [::Google::Cloud::Dataplex::V1::DataScanEvent::ScanType]
        #     The type of the data scan.
        # @!attribute [rw] state
        #   @return [::Google::Cloud::Dataplex::V1::DataScanEvent::State]
        #     The status of the data scan job.
        # @!attribute [rw] message
        #   @return [::String]
        #     The message describing the data scan job event.
        # @!attribute [rw] spec_version
        #   @return [::String]
        #     A version identifier of the spec which was used to execute this job.
        # @!attribute [rw] trigger
        #   @return [::Google::Cloud::Dataplex::V1::DataScanEvent::Trigger]
        #     The trigger type of the data scan job.
        # @!attribute [rw] scope
        #   @return [::Google::Cloud::Dataplex::V1::DataScanEvent::Scope]
        #     The scope of the data scan (e.g. full, incremental).
        # @!attribute [rw] data_profile
        #   @return [::Google::Cloud::Dataplex::V1::DataScanEvent::DataProfileResult]
        #     Data profile result for data profile type data scan.
        # @!attribute [rw] data_quality
        #   @return [::Google::Cloud::Dataplex::V1::DataScanEvent::DataQualityResult]
        #     Data quality result for data quality type data scan.
        # @!attribute [rw] data_profile_configs
        #   @return [::Google::Cloud::Dataplex::V1::DataScanEvent::DataProfileAppliedConfigs]
        #     Applied configs for data profile type data scan.
        # @!attribute [rw] data_quality_configs
        #   @return [::Google::Cloud::Dataplex::V1::DataScanEvent::DataQualityAppliedConfigs]
        #     Applied configs for data quality type data scan.
        # @!attribute [rw] post_scan_actions_result
        #   @return [::Google::Cloud::Dataplex::V1::DataScanEvent::PostScanActionsResult]
        #     The result of post scan actions.
        class DataScanEvent
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Data profile result for data scan job.
          # @!attribute [rw] row_count
          #   @return [::Integer]
          #     The count of rows processed in the data scan job.
          class DataProfileResult
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Data quality result for data scan job.
          # @!attribute [rw] row_count
          #   @return [::Integer]
          #     The count of rows processed in the data scan job.
          # @!attribute [rw] passed
          #   @return [::Boolean]
          #     Whether the data quality result was `pass` or not.
          # @!attribute [rw] dimension_passed
          #   @return [::Google::Protobuf::Map{::String => ::Boolean}]
          #     The result of each dimension for data quality result.
          #     The key of the map is the name of the dimension.
          #     The value is the bool value depicting whether the dimension result was
          #     `pass` or not.
          class DataQualityResult
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # @!attribute [rw] key
            #   @return [::String]
            # @!attribute [rw] value
            #   @return [::Boolean]
            class DimensionPassedEntry
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end
          end

          # Applied configs for data profile type data scan job.
          # @!attribute [rw] sampling_percent
          #   @return [::Float]
          #     The percentage of the records selected from the dataset for DataScan.
          #
          #     * Value ranges between 0.0 and 100.0.
          #     * Value 0.0 or 100.0 imply that sampling was not applied.
          # @!attribute [rw] row_filter_applied
          #   @return [::Boolean]
          #     Boolean indicating whether a row filter was applied in the DataScan job.
          # @!attribute [rw] column_filter_applied
          #   @return [::Boolean]
          #     Boolean indicating whether a column filter was applied in the DataScan
          #     job.
          class DataProfileAppliedConfigs
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Applied configs for data quality type data scan job.
          # @!attribute [rw] sampling_percent
          #   @return [::Float]
          #     The percentage of the records selected from the dataset for DataScan.
          #
          #     * Value ranges between 0.0 and 100.0.
          #     * Value 0.0 or 100.0 imply that sampling was not applied.
          # @!attribute [rw] row_filter_applied
          #   @return [::Boolean]
          #     Boolean indicating whether a row filter was applied in the DataScan job.
          class DataQualityAppliedConfigs
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Post scan actions result for data scan job.
          # @!attribute [rw] bigquery_export_result
          #   @return [::Google::Cloud::Dataplex::V1::DataScanEvent::PostScanActionsResult::BigQueryExportResult]
          #     The result of BigQuery export post scan action.
          class PostScanActionsResult
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # The result of BigQuery export post scan action.
            # @!attribute [rw] state
            #   @return [::Google::Cloud::Dataplex::V1::DataScanEvent::PostScanActionsResult::BigQueryExportResult::State]
            #     Execution state for the BigQuery exporting.
            # @!attribute [rw] message
            #   @return [::String]
            #     Additional information about the BigQuery exporting.
            class BigQueryExportResult
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods

              # Execution state for the exporting.
              module State
                # The exporting state is unspecified.
                STATE_UNSPECIFIED = 0

                # The exporting completed successfully.
                SUCCEEDED = 1

                # The exporting is no longer running due to an error.
                FAILED = 2

                # The exporting is skipped due to no valid scan result to export
                # (usually caused by scan failed).
                SKIPPED = 3
              end
            end
          end

          # The type of the data scan.
          module ScanType
            # An unspecified data scan type.
            SCAN_TYPE_UNSPECIFIED = 0

            # Data scan for data profile.
            DATA_PROFILE = 1

            # Data scan for data quality.
            DATA_QUALITY = 2
          end

          # The job state of the data scan.
          module State
            # Unspecified job state.
            STATE_UNSPECIFIED = 0

            # Data scan job started.
            STARTED = 1

            # Data scan job successfully completed.
            SUCCEEDED = 2

            # Data scan job was unsuccessful.
            FAILED = 3

            # Data scan job was cancelled.
            CANCELLED = 4

            # Data scan job was createed.
            CREATED = 5
          end

          # The trigger type for the data scan.
          module Trigger
            # An unspecified trigger type.
            TRIGGER_UNSPECIFIED = 0

            # Data scan triggers on demand.
            ON_DEMAND = 1

            # Data scan triggers as per schedule.
            SCHEDULE = 2
          end

          # The scope of job for the data scan.
          module Scope
            # An unspecified scope type.
            SCOPE_UNSPECIFIED = 0

            # Data scan runs on all of the data.
            FULL = 1

            # Data scan runs on incremental data.
            INCREMENTAL = 2
          end
        end

        # Information about the result of a data quality rule for data quality scan.
        # The monitored resource is 'DataScan'.
        # @!attribute [rw] job_id
        #   @return [::String]
        #     Identifier of the specific data scan job this log entry is for.
        # @!attribute [rw] data_source
        #   @return [::String]
        #     The data source of the data scan (e.g. BigQuery table name).
        # @!attribute [rw] column
        #   @return [::String]
        #     The column which this rule is evaluated against.
        # @!attribute [rw] rule_name
        #   @return [::String]
        #     The name of the data quality rule.
        # @!attribute [rw] rule_type
        #   @return [::Google::Cloud::Dataplex::V1::DataQualityScanRuleResult::RuleType]
        #     The type of the data quality rule.
        # @!attribute [rw] evalution_type
        #   @return [::Google::Cloud::Dataplex::V1::DataQualityScanRuleResult::EvaluationType]
        #     The evaluation type of the data quality rule.
        # @!attribute [rw] rule_dimension
        #   @return [::String]
        #     The dimension of the data quality rule.
        # @!attribute [rw] threshold_percent
        #   @return [::Float]
        #     The passing threshold ([0.0, 100.0]) of the data quality rule.
        # @!attribute [rw] result
        #   @return [::Google::Cloud::Dataplex::V1::DataQualityScanRuleResult::Result]
        #     The result of the data quality rule.
        # @!attribute [rw] evaluated_row_count
        #   @return [::Integer]
        #     The number of rows evaluated against the data quality rule.
        #     This field is only valid for rules of PER_ROW evaluation type.
        # @!attribute [rw] passed_row_count
        #   @return [::Integer]
        #     The number of rows which passed a rule evaluation.
        #     This field is only valid for rules of PER_ROW evaluation type.
        # @!attribute [rw] null_row_count
        #   @return [::Integer]
        #     The number of rows with null values in the specified column.
        class DataQualityScanRuleResult
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # The type of the data quality rule.
          module RuleType
            # An unspecified rule type.
            RULE_TYPE_UNSPECIFIED = 0

            # Please see
            # https://cloud.google.com/dataplex/docs/reference/rest/v1/DataQualityRule#nonnullexpectation.
            NON_NULL_EXPECTATION = 1

            # Please see
            # https://cloud.google.com/dataplex/docs/reference/rest/v1/DataQualityRule#rangeexpectation.
            RANGE_EXPECTATION = 2

            # Please see
            # https://cloud.google.com/dataplex/docs/reference/rest/v1/DataQualityRule#regexexpectation.
            REGEX_EXPECTATION = 3

            # Please see
            # https://cloud.google.com/dataplex/docs/reference/rest/v1/DataQualityRule#rowconditionexpectation.
            ROW_CONDITION_EXPECTATION = 4

            # Please see
            # https://cloud.google.com/dataplex/docs/reference/rest/v1/DataQualityRule#setexpectation.
            SET_EXPECTATION = 5

            # Please see
            # https://cloud.google.com/dataplex/docs/reference/rest/v1/DataQualityRule#statisticrangeexpectation.
            STATISTIC_RANGE_EXPECTATION = 6

            # Please see
            # https://cloud.google.com/dataplex/docs/reference/rest/v1/DataQualityRule#tableconditionexpectation.
            TABLE_CONDITION_EXPECTATION = 7

            # Please see
            # https://cloud.google.com/dataplex/docs/reference/rest/v1/DataQualityRule#uniquenessexpectation.
            UNIQUENESS_EXPECTATION = 8
          end

          # The evaluation type of the data quality rule.
          module EvaluationType
            # An unspecified evaluation type.
            EVALUATION_TYPE_UNSPECIFIED = 0

            # The rule evaluation is done at per row level.
            PER_ROW = 1

            # The rule evaluation is done for an aggregate of rows.
            AGGREGATE = 2
          end

          # Whether the data quality rule passed or failed.
          module Result
            # An unspecified result.
            RESULT_UNSPECIFIED = 0

            # The data quality rule passed.
            PASSED = 1

            # The data quality rule failed.
            FAILED = 2
          end
        end
      end
    end
  end
end
