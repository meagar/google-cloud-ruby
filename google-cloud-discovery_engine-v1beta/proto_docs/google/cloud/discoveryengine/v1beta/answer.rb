# frozen_string_literal: true

# Copyright 2024 Google LLC
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
    module DiscoveryEngine
      module V1beta
        # Defines an answer.
        # @!attribute [rw] name
        #   @return [::String]
        #     Immutable. Fully qualified name
        #     `project/*/locations/global/collections/{collection}/engines/{engine}/sessions/*/answers/*`
        # @!attribute [rw] state
        #   @return [::Google::Cloud::DiscoveryEngine::V1beta::Answer::State]
        #     The state of the answer generation.
        # @!attribute [rw] answer_text
        #   @return [::String]
        #     The textual answer.
        # @!attribute [rw] citations
        #   @return [::Array<::Google::Cloud::DiscoveryEngine::V1beta::Answer::Citation>]
        #     Citations.
        # @!attribute [rw] references
        #   @return [::Array<::Google::Cloud::DiscoveryEngine::V1beta::Answer::Reference>]
        #     References.
        # @!attribute [rw] related_questions
        #   @return [::Array<::String>]
        #     Suggested related questions.
        # @!attribute [rw] steps
        #   @return [::Array<::Google::Cloud::DiscoveryEngine::V1beta::Answer::Step>]
        #     Answer generation steps.
        # @!attribute [rw] query_understanding_info
        #   @return [::Google::Cloud::DiscoveryEngine::V1beta::Answer::QueryUnderstandingInfo]
        #     Query understanding information.
        # @!attribute [rw] answer_skipped_reasons
        #   @return [::Array<::Google::Cloud::DiscoveryEngine::V1beta::Answer::AnswerSkippedReason>]
        #     Additional answer-skipped reasons. This provides the reason for ignored
        #     cases. If nothing is skipped, this field is not set.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Answer creation timestamp.
        # @!attribute [r] complete_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Answer completed timestamp.
        class Answer
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Citation info for a segment.
          # @!attribute [rw] start_index
          #   @return [::Integer]
          #     Index indicates the start of the segment, measured in bytes (UTF-8
          #     unicode).
          # @!attribute [rw] end_index
          #   @return [::Integer]
          #     End of the attributed segment, exclusive.
          # @!attribute [rw] sources
          #   @return [::Array<::Google::Cloud::DiscoveryEngine::V1beta::Answer::CitationSource>]
          #     Citation sources for the attributed segment.
          class Citation
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Citation source.
          # @!attribute [rw] reference_id
          #   @return [::String]
          #     ID of the citation source.
          class CitationSource
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Reference.
          # @!attribute [rw] unstructured_document_info
          #   @return [::Google::Cloud::DiscoveryEngine::V1beta::Answer::Reference::UnstructuredDocumentInfo]
          #     Unstructured document information.
          # @!attribute [rw] chunk_info
          #   @return [::Google::Cloud::DiscoveryEngine::V1beta::Answer::Reference::ChunkInfo]
          #     Chunk information.
          class Reference
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # Unstructured document information.
            # @!attribute [rw] document
            #   @return [::String]
            #     Document resource name.
            # @!attribute [rw] uri
            #   @return [::String]
            #     URI for the document.
            # @!attribute [rw] title
            #   @return [::String]
            #     Title.
            # @!attribute [rw] chunk_contents
            #   @return [::Array<::Google::Cloud::DiscoveryEngine::V1beta::Answer::Reference::UnstructuredDocumentInfo::ChunkContent>]
            #     List of cited chunk contents derived from document content.
            class UnstructuredDocumentInfo
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods

              # Chunk content.
              # @!attribute [rw] content
              #   @return [::String]
              #     Chunk textual content.
              # @!attribute [rw] page_identifier
              #   @return [::String]
              #     Page identifier.
              class ChunkContent
                include ::Google::Protobuf::MessageExts
                extend ::Google::Protobuf::MessageExts::ClassMethods
              end
            end

            # Chunk information.
            # @!attribute [rw] chunk
            #   @return [::String]
            #     Chunk resource name.
            # @!attribute [rw] content
            #   @return [::String]
            #     Chunk textual content.
            # @!attribute [rw] relevance_score
            #   @return [::Float]
            #     Relevance score.
            # @!attribute [rw] document_metadata
            #   @return [::Google::Cloud::DiscoveryEngine::V1beta::Answer::Reference::ChunkInfo::DocumentMetadata]
            #     Document metadata.
            class ChunkInfo
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods

              # Document metadata.
              # @!attribute [rw] document
              #   @return [::String]
              #     Document resource name.
              # @!attribute [rw] uri
              #   @return [::String]
              #     URI for the document.
              # @!attribute [rw] title
              #   @return [::String]
              #     Title.
              # @!attribute [rw] page_identifier
              #   @return [::String]
              #     Page identifier.
              class DocumentMetadata
                include ::Google::Protobuf::MessageExts
                extend ::Google::Protobuf::MessageExts::ClassMethods
              end
            end
          end

          # Step information.
          # @!attribute [rw] state
          #   @return [::Google::Cloud::DiscoveryEngine::V1beta::Answer::Step::State]
          #     The state of the step.
          # @!attribute [rw] description
          #   @return [::String]
          #     The description of the step.
          # @!attribute [rw] thought
          #   @return [::String]
          #     The thought of the step.
          # @!attribute [rw] actions
          #   @return [::Array<::Google::Cloud::DiscoveryEngine::V1beta::Answer::Step::Action>]
          #     Actions.
          class Step
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # Action.
            # @!attribute [rw] search_action
            #   @return [::Google::Cloud::DiscoveryEngine::V1beta::Answer::Step::Action::SearchAction]
            #     Search action.
            # @!attribute [rw] observation
            #   @return [::Google::Cloud::DiscoveryEngine::V1beta::Answer::Step::Action::Observation]
            #     Observation.
            class Action
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods

              # Search action.
              # @!attribute [rw] query
              #   @return [::String]
              #     The query to search.
              class SearchAction
                include ::Google::Protobuf::MessageExts
                extend ::Google::Protobuf::MessageExts::ClassMethods
              end

              # Observation.
              # @!attribute [rw] search_results
              #   @return [::Array<::Google::Cloud::DiscoveryEngine::V1beta::Answer::Step::Action::Observation::SearchResult>]
              #     Search results observed by the search action, it can be snippets info
              #     or chunk info, depending on the citation type set by the user.
              class Observation
                include ::Google::Protobuf::MessageExts
                extend ::Google::Protobuf::MessageExts::ClassMethods

                # @!attribute [rw] document
                #   @return [::String]
                #     Document resource name.
                # @!attribute [rw] uri
                #   @return [::String]
                #     URI for the document.
                # @!attribute [rw] title
                #   @return [::String]
                #     Title.
                # @!attribute [rw] snippet_info
                #   @return [::Array<::Google::Cloud::DiscoveryEngine::V1beta::Answer::Step::Action::Observation::SearchResult::SnippetInfo>]
                #     If citation_type is DOCUMENT_LEVEL_CITATION, populate document
                #     level snippets.
                # @!attribute [rw] chunk_info
                #   @return [::Array<::Google::Cloud::DiscoveryEngine::V1beta::Answer::Step::Action::Observation::SearchResult::ChunkInfo>]
                #     If citation_type is CHUNK_LEVEL_CITATION and chunk mode is on,
                #     populate chunk info.
                class SearchResult
                  include ::Google::Protobuf::MessageExts
                  extend ::Google::Protobuf::MessageExts::ClassMethods

                  # Snippet information.
                  # @!attribute [rw] snippet
                  #   @return [::String]
                  #     Snippet content.
                  # @!attribute [rw] snippet_status
                  #   @return [::String]
                  #     Status of the snippet defined by the search team.
                  class SnippetInfo
                    include ::Google::Protobuf::MessageExts
                    extend ::Google::Protobuf::MessageExts::ClassMethods
                  end

                  # Chunk information.
                  # @!attribute [rw] chunk
                  #   @return [::String]
                  #     Chunk resource name.
                  # @!attribute [rw] content
                  #   @return [::String]
                  #     Chunk textual content.
                  # @!attribute [rw] relevance_score
                  #   @return [::Float]
                  #     Relevance score.
                  class ChunkInfo
                    include ::Google::Protobuf::MessageExts
                    extend ::Google::Protobuf::MessageExts::ClassMethods
                  end
                end
              end
            end

            # Enumeration of the state of the step.
            module State
              # Unknown.
              STATE_UNSPECIFIED = 0

              # Step is currently in progress.
              IN_PROGRESS = 1

              # Step currently failed.
              FAILED = 2

              # Step has succeeded.
              SUCCEEDED = 3
            end
          end

          # Query understanding information.
          # @!attribute [rw] query_classification_info
          #   @return [::Array<::Google::Cloud::DiscoveryEngine::V1beta::Answer::QueryUnderstandingInfo::QueryClassificationInfo>]
          #     Query classification information.
          class QueryUnderstandingInfo
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # Query classification information.
            # @!attribute [rw] type
            #   @return [::Google::Cloud::DiscoveryEngine::V1beta::Answer::QueryUnderstandingInfo::QueryClassificationInfo::Type]
            #     Query classification type.
            # @!attribute [rw] positive
            #   @return [::Boolean]
            #     Classification output.
            class QueryClassificationInfo
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods

              # Query classification types.
              module Type
                # Unspecified query classification type.
                TYPE_UNSPECIFIED = 0

                # Adversarial query classification type.
                ADVERSARIAL_QUERY = 1

                # Non-answer-seeking query classification type.
                NON_ANSWER_SEEKING_QUERY = 2
              end
            end
          end

          # Enumeration of the state of the answer generation.
          module State
            # Unknown.
            STATE_UNSPECIFIED = 0

            # Answer generation is currently in progress.
            IN_PROGRESS = 1

            # Answer generation currently failed.
            FAILED = 2

            # Answer generation has succeeded.
            SUCCEEDED = 3
          end

          # An enum for answer skipped reasons.
          module AnswerSkippedReason
            # Default value. The answer skipped reason is not specified.
            ANSWER_SKIPPED_REASON_UNSPECIFIED = 0

            # The adversarial query ignored case.
            ADVERSARIAL_QUERY_IGNORED = 1

            # The non-answer seeking query ignored case.
            NON_ANSWER_SEEKING_QUERY_IGNORED = 2

            # The out-of-domain query ignored case.
            #
            # Google skips the answer if there are no high-relevance search results.
            OUT_OF_DOMAIN_QUERY_IGNORED = 3

            # The potential policy violation case.
            #
            # Google skips the answer if there is a potential policy violation
            # detected. This includes content that may be violent or toxic.
            POTENTIAL_POLICY_VIOLATION = 4
          end
        end
      end
    end
  end
end
