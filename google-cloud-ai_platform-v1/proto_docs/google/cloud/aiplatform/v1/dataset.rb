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
    module AIPlatform
      module V1
        # A collection of DataItems and Annotations on them.
        # @!attribute [r] name
        #   @return [::String]
        #     Output only. The resource name of the Dataset.
        # @!attribute [rw] display_name
        #   @return [::String]
        #     Required. The user-defined name of the Dataset.
        #     The name can be up to 128 characters long and can consist of any UTF-8
        #     characters.
        # @!attribute [rw] description
        #   @return [::String]
        #     The description of the Dataset.
        # @!attribute [rw] metadata_schema_uri
        #   @return [::String]
        #     Required. Points to a YAML file stored on Google Cloud Storage describing
        #     additional information about the Dataset. The schema is defined as an
        #     OpenAPI 3.0.2 Schema Object. The schema files that can be used here are
        #     found in gs://google-cloud-aiplatform/schema/dataset/metadata/.
        # @!attribute [rw] metadata
        #   @return [::Google::Protobuf::Value]
        #     Required. Additional information about the Dataset.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Timestamp when this Dataset was created.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Timestamp when this Dataset was last updated.
        # @!attribute [rw] etag
        #   @return [::String]
        #     Used to perform consistent read-modify-write updates. If not set, a blind
        #     "overwrite" update happens.
        # @!attribute [rw] labels
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     The labels with user-defined metadata to organize your Datasets.
        #
        #     Label keys and values can be no longer than 64 characters
        #     (Unicode codepoints), can only contain lowercase letters, numeric
        #     characters, underscores and dashes. International characters are allowed.
        #     No more than 64 user labels can be associated with one Dataset (System
        #     labels are excluded).
        #
        #     See https://goo.gl/xmQnxf for more information and examples of labels.
        #     System reserved label keys are prefixed with "aiplatform.googleapis.com/"
        #     and are immutable. Following system labels exist for each Dataset:
        #
        #     * "aiplatform.googleapis.com/dataset_metadata_schema": output only, its
        #       value is the
        #       [metadata_schema's][google.cloud.aiplatform.v1.Dataset.metadata_schema_uri]
        #       title.
        # @!attribute [rw] saved_queries
        #   @return [::Array<::Google::Cloud::AIPlatform::V1::SavedQuery>]
        #     All SavedQueries belong to the Dataset will be returned in List/Get
        #     Dataset response. The annotation_specs field
        #     will not be populated except for UI cases which will only use
        #     {::Google::Cloud::AIPlatform::V1::SavedQuery#annotation_spec_count annotation_spec_count}.
        #     In CreateDataset request, a SavedQuery is created together if
        #     this field is set, up to one SavedQuery can be set in CreateDatasetRequest.
        #     The SavedQuery should not contain any AnnotationSpec.
        # @!attribute [rw] encryption_spec
        #   @return [::Google::Cloud::AIPlatform::V1::EncryptionSpec]
        #     Customer-managed encryption key spec for a Dataset. If set, this Dataset
        #     and all sub-resources of this Dataset will be secured by this key.
        # @!attribute [r] metadata_artifact
        #   @return [::String]
        #     Output only. The resource name of the Artifact that was created in
        #     MetadataStore when creating the Dataset. The Artifact resource name pattern
        #     is
        #     `projects/{project}/locations/{location}/metadataStores/{metadata_store}/artifacts/{artifact}`.
        class Dataset
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class LabelsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # Describes the location from where we import data into a Dataset, together
        # with the labels that will be applied to the DataItems and the Annotations.
        # @!attribute [rw] gcs_source
        #   @return [::Google::Cloud::AIPlatform::V1::GcsSource]
        #     The Google Cloud Storage location for the input content.
        # @!attribute [rw] data_item_labels
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Labels that will be applied to newly imported DataItems. If an identical
        #     DataItem as one being imported already exists in the Dataset, then these
        #     labels will be appended to these of the already existing one, and if labels
        #     with identical key is imported before, the old label value will be
        #     overwritten. If two DataItems are identical in the same import data
        #     operation, the labels will be combined and if key collision happens in this
        #     case, one of the values will be picked randomly. Two DataItems are
        #     considered identical if their content bytes are identical (e.g. image bytes
        #     or pdf bytes).
        #     These labels will be overridden by Annotation labels specified inside index
        #     file referenced by
        #     {::Google::Cloud::AIPlatform::V1::ImportDataConfig#import_schema_uri import_schema_uri},
        #     e.g. jsonl file.
        # @!attribute [rw] annotation_labels
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Labels that will be applied to newly imported Annotations. If two
        #     Annotations are identical, one of them will be deduped. Two Annotations are
        #     considered identical if their
        #     {::Google::Cloud::AIPlatform::V1::Annotation#payload payload},
        #     {::Google::Cloud::AIPlatform::V1::Annotation#payload_schema_uri payload_schema_uri}
        #     and all of their {::Google::Cloud::AIPlatform::V1::Annotation#labels labels} are
        #     the same. These labels will be overridden by Annotation labels specified
        #     inside index file referenced by
        #     {::Google::Cloud::AIPlatform::V1::ImportDataConfig#import_schema_uri import_schema_uri},
        #     e.g. jsonl file.
        # @!attribute [rw] import_schema_uri
        #   @return [::String]
        #     Required. Points to a YAML file stored on Google Cloud Storage describing
        #     the import format. Validation will be done against the schema. The schema
        #     is defined as an [OpenAPI 3.0.2 Schema
        #     Object](https://github.com/OAI/OpenAPI-Specification/blob/main/versions/3.0.2.md#schemaObject).
        class ImportDataConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class DataItemLabelsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class AnnotationLabelsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # Describes what part of the Dataset is to be exported, the destination of
        # the export and how to export.
        # @!attribute [rw] gcs_destination
        #   @return [::Google::Cloud::AIPlatform::V1::GcsDestination]
        #     The Google Cloud Storage location where the output is to be written to.
        #     In the given directory a new directory will be created with name:
        #     `export-data-<dataset-display-name>-<timestamp-of-export-call>` where
        #     timestamp is in YYYY-MM-DDThh:mm:ss.sssZ ISO-8601 format. All export
        #     output will be written into that directory. Inside that directory,
        #     annotations with the same schema will be grouped into sub directories
        #     which are named with the corresponding annotations' schema title. Inside
        #     these sub directories, a schema.yaml will be created to describe the
        #     output format.
        # @!attribute [rw] fraction_split
        #   @return [::Google::Cloud::AIPlatform::V1::ExportFractionSplit]
        #     Split based on fractions defining the size of each set.
        # @!attribute [rw] annotations_filter
        #   @return [::String]
        #     An expression for filtering what part of the Dataset is to be exported.
        #     Only Annotations that match this filter will be exported. The filter syntax
        #     is the same as in
        #     {::Google::Cloud::AIPlatform::V1::DatasetService::Client#list_annotations ListAnnotations}.
        class ExportDataConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Assigns the input data to training, validation, and test sets as per the
        # given fractions. Any of `training_fraction`, `validation_fraction` and
        # `test_fraction` may optionally be provided, they must sum to up to 1. If the
        # provided ones sum to less than 1, the remainder is assigned to sets as
        # decided by Vertex AI. If none of the fractions are set, by default roughly
        # 80% of data is used for training, 10% for validation, and 10% for test.
        # @!attribute [rw] training_fraction
        #   @return [::Float]
        #     The fraction of the input data that is to be used to train the Model.
        # @!attribute [rw] validation_fraction
        #   @return [::Float]
        #     The fraction of the input data that is to be used to validate the Model.
        # @!attribute [rw] test_fraction
        #   @return [::Float]
        #     The fraction of the input data that is to be used to evaluate the Model.
        class ExportFractionSplit
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
