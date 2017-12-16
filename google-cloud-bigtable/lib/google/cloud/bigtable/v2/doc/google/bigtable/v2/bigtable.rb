# Copyright 2017 Google LLC
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

module Google
  module Bigtable
    ##
    # # Google Cloud Bigtable API Contents
    #
    # | Class | Description |
    # | ----- | ----------- |
    # | [BigtableClient][] | Google Cloud Bigtable - http://cloud.google.com/bigtable/ |
    # | [Data Types][] | Data types for Google::Cloud::Bigtable::V2 |
    #
    # [BigtableClient]: https://googlecloudplatform.github.io/google-cloud-ruby/#/docs/google-cloud-bigtable/latest/google/bigtable/v2/bigtableclient
    # [Data Types]: https://googlecloudplatform.github.io/google-cloud-ruby/#/docs/google-cloud-bigtable/latest/google/bigtable/v2/datatypes
    #
    module V2
      # Request message for Bigtable.ReadRows.
      # @!attribute [rw] table_name
      #   @return [String]
      #     The unique name of the table from which to read.
      #     Values are of the form
      #     +projects/<project>/instances/<instance>/tables/<table>+.
      # @!attribute [rw] rows
      #   @return [Google::Bigtable::V2::RowSet]
      #     The row keys and/or ranges to read. If not specified, reads from all rows.
      # @!attribute [rw] filter
      #   @return [Google::Bigtable::V2::RowFilter]
      #     The filter to apply to the contents of the specified row(s). If unset,
      #     reads the entirety of each row.
      # @!attribute [rw] rows_limit
      #   @return [Integer]
      #     The read will terminate after committing to N rows' worth of results. The
      #     default (zero) is to return all results.
      class ReadRowsRequest; end

      # Response message for Bigtable.ReadRows.
      # @!attribute [rw] chunks
      #   @return [Array<Google::Bigtable::V2::ReadRowsResponse::CellChunk>]
      # @!attribute [rw] last_scanned_row_key
      #   @return [String]
      #     Optionally the server might return the row key of the last row it
      #     has scanned.  The client can use this to construct a more
      #     efficient retry request if needed: any row keys or portions of
      #     ranges less than this row key can be dropped from the request.
      #     This is primarily useful for cases where the server has read a
      #     lot of data that was filtered out since the last committed row
      #     key, allowing the client to skip that work on a retry.
      class ReadRowsResponse
        # Specifies a piece of a row's contents returned as part of the read
        # response stream.
        # @!attribute [rw] row_key
        #   @return [String]
        #     The row key for this chunk of data.  If the row key is empty,
        #     this CellChunk is a continuation of the same row as the previous
        #     CellChunk in the response stream, even if that CellChunk was in a
        #     previous ReadRowsResponse message.
        # @!attribute [rw] family_name
        #   @return [Google::Protobuf::StringValue]
        #     The column family name for this chunk of data.  If this message
        #     is not present this CellChunk is a continuation of the same column
        #     family as the previous CellChunk.  The empty string can occur as a
        #     column family name in a response so clients must check
        #     explicitly for the presence of this message, not just for
        #     +family_name.value+ being non-empty.
        # @!attribute [rw] qualifier
        #   @return [Google::Protobuf::BytesValue]
        #     The column qualifier for this chunk of data.  If this message
        #     is not present, this CellChunk is a continuation of the same column
        #     as the previous CellChunk.  Column qualifiers may be empty so
        #     clients must check for the presence of this message, not just
        #     for +qualifier.value+ being non-empty.
        # @!attribute [rw] timestamp_micros
        #   @return [Integer]
        #     The cell's stored timestamp, which also uniquely identifies it
        #     within its column.  Values are always expressed in
        #     microseconds, but individual tables may set a coarser
        #     granularity to further restrict the allowed values. For
        #     example, a table which specifies millisecond granularity will
        #     only allow values of +timestamp_micros+ which are multiples of
        #     1000.  Timestamps are only set in the first CellChunk per cell
        #     (for cells split into multiple chunks).
        # @!attribute [rw] labels
        #   @return [Array<String>]
        #     Labels applied to the cell by a
        #     {Google::Bigtable::V2::RowFilter RowFilter}.  Labels are only set
        #     on the first CellChunk per cell.
        # @!attribute [rw] value
        #   @return [String]
        #     The value stored in the cell.  Cell values can be split across
        #     multiple CellChunks.  In that case only the value field will be
        #     set in CellChunks after the first: the timestamp and labels
        #     will only be present in the first CellChunk, even if the first
        #     CellChunk came in a previous ReadRowsResponse.
        # @!attribute [rw] value_size
        #   @return [Integer]
        #     If this CellChunk is part of a chunked cell value and this is
        #     not the final chunk of that cell, value_size will be set to the
        #     total length of the cell value.  The client can use this size
        #     to pre-allocate memory to hold the full cell value.
        # @!attribute [rw] reset_row
        #   @return [true, false]
        #     Indicates that the client should drop all previous chunks for
        #     +row_key+, as it will be re-read from the beginning.
        # @!attribute [rw] commit_row
        #   @return [true, false]
        #     Indicates that the client can safely process all previous chunks for
        #     +row_key+, as its data has been fully read.
        class CellChunk; end
      end

      # Request message for Bigtable.SampleRowKeys.
      # @!attribute [rw] table_name
      #   @return [String]
      #     The unique name of the table from which to sample row keys.
      #     Values are of the form
      #     +projects/<project>/instances/<instance>/tables/<table>+.
      class SampleRowKeysRequest; end

      # Response message for Bigtable.SampleRowKeys.
      # @!attribute [rw] row_key
      #   @return [String]
      #     Sorted streamed sequence of sample row keys in the table. The table might
      #     have contents before the first row key in the list and after the last one,
      #     but a key containing the empty string indicates "end of table" and will be
      #     the last response given, if present.
      #     Note that row keys in this list may not have ever been written to or read
      #     from, and users should therefore not make any assumptions about the row key
      #     structure that are specific to their use case.
      # @!attribute [rw] offset_bytes
      #   @return [Integer]
      #     Approximate total storage space used by all rows in the table which precede
      #     +row_key+. Buffering the contents of all rows between two subsequent
      #     samples would require space roughly equal to the difference in their
      #     +offset_bytes+ fields.
      class SampleRowKeysResponse; end

      # Request message for Bigtable.MutateRow.
      # @!attribute [rw] table_name
      #   @return [String]
      #     The unique name of the table to which the mutation should be applied.
      #     Values are of the form
      #     +projects/<project>/instances/<instance>/tables/<table>+.
      # @!attribute [rw] row_key
      #   @return [String]
      #     The key of the row to which the mutation should be applied.
      # @!attribute [rw] mutations
      #   @return [Array<Google::Bigtable::V2::Mutation>]
      #     Changes to be atomically applied to the specified row. Entries are applied
      #     in order, meaning that earlier mutations can be masked by later ones.
      #     Must contain at least one entry and at most 100000.
      class MutateRowRequest; end

      # Response message for Bigtable.MutateRow.
      class MutateRowResponse; end

      # Request message for BigtableService.MutateRows.
      # @!attribute [rw] table_name
      #   @return [String]
      #     The unique name of the table to which the mutations should be applied.
      # @!attribute [rw] entries
      #   @return [Array<Google::Bigtable::V2::MutateRowsRequest::Entry>]
      #     The row keys and corresponding mutations to be applied in bulk.
      #     Each entry is applied as an atomic mutation, but the entries may be
      #     applied in arbitrary order (even between entries for the same row).
      #     At least one entry must be specified, and in total the entries can
      #     contain at most 100000 mutations.
      class MutateRowsRequest
        # @!attribute [rw] row_key
        #   @return [String]
        #     The key of the row to which the +mutations+ should be applied.
        # @!attribute [rw] mutations
        #   @return [Array<Google::Bigtable::V2::Mutation>]
        #     Changes to be atomically applied to the specified row. Mutations are
        #     applied in order, meaning that earlier mutations can be masked by
        #     later ones.
        #     You must specify at least one mutation.
        class Entry; end
      end

      # Response message for BigtableService.MutateRows.
      # @!attribute [rw] entries
      #   @return [Array<Google::Bigtable::V2::MutateRowsResponse::Entry>]
      #     One or more results for Entries from the batch request.
      class MutateRowsResponse
        # @!attribute [rw] index
        #   @return [Integer]
        #     The index into the original request's +entries+ list of the Entry
        #     for which a result is being reported.
        # @!attribute [rw] status
        #   @return [Google::Rpc::Status]
        #     The result of the request Entry identified by +index+.
        #     Depending on how requests are batched during execution, it is possible
        #     for one Entry to fail due to an error with another Entry. In the event
        #     that this occurs, the same error will be reported for both entries.
        class Entry; end
      end

      # Request message for Bigtable.CheckAndMutateRow.
      # @!attribute [rw] table_name
      #   @return [String]
      #     The unique name of the table to which the conditional mutation should be
      #     applied.
      #     Values are of the form
      #     +projects/<project>/instances/<instance>/tables/<table>+.
      # @!attribute [rw] row_key
      #   @return [String]
      #     The key of the row to which the conditional mutation should be applied.
      # @!attribute [rw] predicate_filter
      #   @return [Google::Bigtable::V2::RowFilter]
      #     The filter to be applied to the contents of the specified row. Depending
      #     on whether or not any results are yielded, either +true_mutations+ or
      #     +false_mutations+ will be executed. If unset, checks that the row contains
      #     any values at all.
      # @!attribute [rw] true_mutations
      #   @return [Array<Google::Bigtable::V2::Mutation>]
      #     Changes to be atomically applied to the specified row if +predicate_filter+
      #     yields at least one cell when applied to +row_key+. Entries are applied in
      #     order, meaning that earlier mutations can be masked by later ones.
      #     Must contain at least one entry if +false_mutations+ is empty, and at most
      #     100000.
      # @!attribute [rw] false_mutations
      #   @return [Array<Google::Bigtable::V2::Mutation>]
      #     Changes to be atomically applied to the specified row if +predicate_filter+
      #     does not yield any cells when applied to +row_key+. Entries are applied in
      #     order, meaning that earlier mutations can be masked by later ones.
      #     Must contain at least one entry if +true_mutations+ is empty, and at most
      #     100000.
      class CheckAndMutateRowRequest; end

      # Response message for Bigtable.CheckAndMutateRow.
      # @!attribute [rw] predicate_matched
      #   @return [true, false]
      #     Whether or not the request's +predicate_filter+ yielded any results for
      #     the specified row.
      class CheckAndMutateRowResponse; end

      # Request message for Bigtable.ReadModifyWriteRow.
      # @!attribute [rw] table_name
      #   @return [String]
      #     The unique name of the table to which the read/modify/write rules should be
      #     applied.
      #     Values are of the form
      #     +projects/<project>/instances/<instance>/tables/<table>+.
      # @!attribute [rw] row_key
      #   @return [String]
      #     The key of the row to which the read/modify/write rules should be applied.
      # @!attribute [rw] rules
      #   @return [Array<Google::Bigtable::V2::ReadModifyWriteRule>]
      #     Rules specifying how the specified row's contents are to be transformed
      #     into writes. Entries are applied in order, meaning that earlier rules will
      #     affect the results of later ones.
      class ReadModifyWriteRowRequest; end

      # Response message for Bigtable.ReadModifyWriteRow.
      # @!attribute [rw] row
      #   @return [Google::Bigtable::V2::Row]
      #     A Row containing the new contents of all cells modified by the request.
      class ReadModifyWriteRowResponse; end
    end
  end
end