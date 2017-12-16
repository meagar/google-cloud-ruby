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
    module V2
      # Specifies the complete (requested) contents of a single row of a table.
      # Rows which exceed 256MiB in size cannot be read in full.
      # @!attribute [rw] key
      #   @return [String]
      #     The unique key which identifies this row within its table. This is the same
      #     key that's used to identify the row in, for example, a MutateRowRequest.
      #     May contain any non-empty byte string up to 4KiB in length.
      # @!attribute [rw] families
      #   @return [Array<Google::Bigtable::V2::Family>]
      #     May be empty, but only if the entire row is empty.
      #     The mutual ordering of column families is not specified.
      class Row; end

      # Specifies (some of) the contents of a single row/column family intersection
      # of a table.
      # @!attribute [rw] name
      #   @return [String]
      #     The unique key which identifies this family within its row. This is the
      #     same key that's used to identify the family in, for example, a RowFilter
      #     which sets its "family_name_regex_filter" field.
      #     Must match +[-_.a-zA-Z0-9]++, except that AggregatingRowProcessors may
      #     produce cells in a sentinel family with an empty name.
      #     Must be no greater than 64 characters in length.
      # @!attribute [rw] columns
      #   @return [Array<Google::Bigtable::V2::Column>]
      #     Must not be empty. Sorted in order of increasing "qualifier".
      class Family; end

      # Specifies (some of) the contents of a single row/column intersection of a
      # table.
      # @!attribute [rw] qualifier
      #   @return [String]
      #     The unique key which identifies this column within its family. This is the
      #     same key that's used to identify the column in, for example, a RowFilter
      #     which sets its +column_qualifier_regex_filter+ field.
      #     May contain any byte string, including the empty string, up to 16kiB in
      #     length.
      # @!attribute [rw] cells
      #   @return [Array<Google::Bigtable::V2::Cell>]
      #     Must not be empty. Sorted in order of decreasing "timestamp_micros".
      class Column; end

      # Specifies (some of) the contents of a single row/column/timestamp of a table.
      # @!attribute [rw] timestamp_micros
      #   @return [Integer]
      #     The cell's stored timestamp, which also uniquely identifies it within
      #     its column.
      #     Values are always expressed in microseconds, but individual tables may set
      #     a coarser granularity to further restrict the allowed values. For
      #     example, a table which specifies millisecond granularity will only allow
      #     values of +timestamp_micros+ which are multiples of 1000.
      # @!attribute [rw] value
      #   @return [String]
      #     The value stored in the cell.
      #     May contain any byte string, including the empty string, up to 100MiB in
      #     length.
      # @!attribute [rw] labels
      #   @return [Array<String>]
      #     Labels applied to the cell by a {Google::Bigtable::V2::RowFilter RowFilter}.
      class Cell; end

      # Specifies a contiguous range of rows.
      # @!attribute [rw] start_key_closed
      #   @return [String]
      #     Used when giving an inclusive lower bound for the range.
      # @!attribute [rw] start_key_open
      #   @return [String]
      #     Used when giving an exclusive lower bound for the range.
      # @!attribute [rw] end_key_open
      #   @return [String]
      #     Used when giving an exclusive upper bound for the range.
      # @!attribute [rw] end_key_closed
      #   @return [String]
      #     Used when giving an inclusive upper bound for the range.
      class RowRange; end

      # Specifies a non-contiguous set of rows.
      # @!attribute [rw] row_keys
      #   @return [Array<String>]
      #     Single rows included in the set.
      # @!attribute [rw] row_ranges
      #   @return [Array<Google::Bigtable::V2::RowRange>]
      #     Contiguous row ranges included in the set.
      class RowSet; end

      # Specifies a contiguous range of columns within a single column family.
      # The range spans from &lt;column_family&gt;:&lt;start_qualifier&gt; to
      # &lt;column_family&gt;:&lt;end_qualifier&gt;, where both bounds can be either
      # inclusive or exclusive.
      # @!attribute [rw] family_name
      #   @return [String]
      #     The name of the column family within which this range falls.
      # @!attribute [rw] start_qualifier_closed
      #   @return [String]
      #     Used when giving an inclusive lower bound for the range.
      # @!attribute [rw] start_qualifier_open
      #   @return [String]
      #     Used when giving an exclusive lower bound for the range.
      # @!attribute [rw] end_qualifier_closed
      #   @return [String]
      #     Used when giving an inclusive upper bound for the range.
      # @!attribute [rw] end_qualifier_open
      #   @return [String]
      #     Used when giving an exclusive upper bound for the range.
      class ColumnRange; end

      # Specified a contiguous range of microsecond timestamps.
      # @!attribute [rw] start_timestamp_micros
      #   @return [Integer]
      #     Inclusive lower bound. If left empty, interpreted as 0.
      # @!attribute [rw] end_timestamp_micros
      #   @return [Integer]
      #     Exclusive upper bound. If left empty, interpreted as infinity.
      class TimestampRange; end

      # Specifies a contiguous range of raw byte values.
      # @!attribute [rw] start_value_closed
      #   @return [String]
      #     Used when giving an inclusive lower bound for the range.
      # @!attribute [rw] start_value_open
      #   @return [String]
      #     Used when giving an exclusive lower bound for the range.
      # @!attribute [rw] end_value_closed
      #   @return [String]
      #     Used when giving an inclusive upper bound for the range.
      # @!attribute [rw] end_value_open
      #   @return [String]
      #     Used when giving an exclusive upper bound for the range.
      class ValueRange; end

      # Takes a row as input and produces an alternate view of the row based on
      # specified rules. For example, a RowFilter might trim down a row to include
      # just the cells from columns matching a given regular expression, or might
      # return all the cells of a row but not their values. More complicated filters
      # can be composed out of these components to express requests such as, "within
      # every column of a particular family, give just the two most recent cells
      # which are older than timestamp X."
      #
      # There are two broad categories of RowFilters (true filters and transformers),
      # as well as two ways to compose simple filters into more complex ones
      # (chains and interleaves). They work as follows:
      #
      # * True filters alter the input row by excluding some of its cells wholesale
      #   from the output row. An example of a true filter is the +value_regex_filter+,
      #   which excludes cells whose values don't match the specified pattern. All
      #   regex true filters use RE2 syntax (https://github.com/google/re2/wiki/Syntax)
      #   in raw byte mode (RE2::Latin1), and are evaluated as full matches. An
      #   important point to keep in mind is that +RE2(.)+ is equivalent by default to
      #   +RE2([^\n])+, meaning that it does not match newlines. When attempting to
      #   match an arbitrary byte, you should therefore use the escape sequence +\C+,
      #   which may need to be further escaped as +\\C+ in your client language.
      #
      # * Transformers alter the input row by changing the values of some of its
      #   cells in the output, without excluding them completely. Currently, the only
      #   supported transformer is the +strip_value_transformer+, which replaces every
      #   cell's value with the empty string.
      #
      # * Chains and interleaves are described in more detail in the
      #   RowFilter.Chain and RowFilter.Interleave documentation.
      #
      # The total serialized size of a RowFilter message must not
      # exceed 4096 bytes, and RowFilters may not be nested within each other
      # (in Chains or Interleaves) to a depth of more than 20.
      # @!attribute [rw] chain
      #   @return [Google::Bigtable::V2::RowFilter::Chain]
      #     Applies several RowFilters to the data in sequence, progressively
      #     narrowing the results.
      # @!attribute [rw] interleave
      #   @return [Google::Bigtable::V2::RowFilter::Interleave]
      #     Applies several RowFilters to the data in parallel and combines the
      #     results.
      # @!attribute [rw] condition
      #   @return [Google::Bigtable::V2::RowFilter::Condition]
      #     Applies one of two possible RowFilters to the data based on the output of
      #     a predicate RowFilter.
      # @!attribute [rw] sink
      #   @return [true, false]
      #     ADVANCED USE ONLY.
      #     Hook for introspection into the RowFilter. Outputs all cells directly to
      #     the output of the read rather than to any parent filter. Consider the
      #     following example:
      #
      #         Chain(
      #           FamilyRegex("A"),
      #           Interleave(
      #             All(),
      #             Chain(Label("foo"), Sink())
      #           ),
      #           QualifierRegex("B")
      #         )
      #
      #                             A,A,1,w
      #                             A,B,2,x
      #                             B,B,4,z
      #                                |
      #                         FamilyRegex("A")
      #                                |
      #                             A,A,1,w
      #                             A,B,2,x
      #                                |
      #                   +------------+-------------+
      #                   |                          |
      #                 All()                    Label(foo)
      #                   |                          |
      #                A,A,1,w              A,A,1,w,labels:[foo]
      #                A,B,2,x              A,B,2,x,labels:[foo]
      #                   |                          |
      #                   |                        Sink() --------------+
      #                   |                          |                  |
      #                   +------------+      x------+          A,A,1,w,labels:[foo]
      #                                |                        A,B,2,x,labels:[foo]
      #                             A,A,1,w                             |
      #                             A,B,2,x                             |
      #                                |                                |
      #                        QualifierRegex("B")                      |
      #                                |                                |
      #                             A,B,2,x                             |
      #                                |                                |
      #                                +--------------------------------+
      #                                |
      #                             A,A,1,w,labels:[foo]
      #                             A,B,2,x,labels:[foo]  // could be switched
      #                             A,B,2,x               // could be switched
      #
      #     Despite being excluded by the qualifier filter, a copy of every cell
      #     that reaches the sink is present in the final result.
      #
      #     As with an {Google::Bigtable::V2::RowFilter::Interleave Interleave},
      #     duplicate cells are possible, and appear in an unspecified mutual order.
      #     In this case we have a duplicate with column "A:B" and timestamp 2,
      #     because one copy passed through the all filter while the other was
      #     passed through the label and sink. Note that one copy has label "foo",
      #     while the other does not.
      #
      #     Cannot be used within the +predicate_filter+, +true_filter+, or
      #     +false_filter+ of a {Google::Bigtable::V2::RowFilter::Condition Condition}.
      # @!attribute [rw] pass_all_filter
      #   @return [true, false]
      #     Matches all cells, regardless of input. Functionally equivalent to
      #     leaving +filter+ unset, but included for completeness.
      # @!attribute [rw] block_all_filter
      #   @return [true, false]
      #     Does not match any cells, regardless of input. Useful for temporarily
      #     disabling just part of a filter.
      # @!attribute [rw] row_key_regex_filter
      #   @return [String]
      #     Matches only cells from rows whose keys satisfy the given RE2 regex. In
      #     other words, passes through the entire row when the key matches, and
      #     otherwise produces an empty row.
      #     Note that, since row keys can contain arbitrary bytes, the +\C+ escape
      #     sequence must be used if a true wildcard is desired. The +.+ character
      #     will not match the new line character +\n+, which may be present in a
      #     binary key.
      # @!attribute [rw] row_sample_filter
      #   @return [Float]
      #     Matches all cells from a row with probability p, and matches no cells
      #     from the row with probability 1-p.
      # @!attribute [rw] family_name_regex_filter
      #   @return [String]
      #     Matches only cells from columns whose families satisfy the given RE2
      #     regex. For technical reasons, the regex must not contain the +:+
      #     character, even if it is not being used as a literal.
      #     Note that, since column families cannot contain the new line character
      #     +\n+, it is sufficient to use +.+ as a full wildcard when matching
      #     column family names.
      # @!attribute [rw] column_qualifier_regex_filter
      #   @return [String]
      #     Matches only cells from columns whose qualifiers satisfy the given RE2
      #     regex.
      #     Note that, since column qualifiers can contain arbitrary bytes, the +\C+
      #     escape sequence must be used if a true wildcard is desired. The +.+
      #     character will not match the new line character +\n+, which may be
      #     present in a binary qualifier.
      # @!attribute [rw] column_range_filter
      #   @return [Google::Bigtable::V2::ColumnRange]
      #     Matches only cells from columns within the given range.
      # @!attribute [rw] timestamp_range_filter
      #   @return [Google::Bigtable::V2::TimestampRange]
      #     Matches only cells with timestamps within the given range.
      # @!attribute [rw] value_regex_filter
      #   @return [String]
      #     Matches only cells with values that satisfy the given regular expression.
      #     Note that, since cell values can contain arbitrary bytes, the +\C+ escape
      #     sequence must be used if a true wildcard is desired. The +.+ character
      #     will not match the new line character +\n+, which may be present in a
      #     binary value.
      # @!attribute [rw] value_range_filter
      #   @return [Google::Bigtable::V2::ValueRange]
      #     Matches only cells with values that fall within the given range.
      # @!attribute [rw] cells_per_row_offset_filter
      #   @return [Integer]
      #     Skips the first N cells of each row, matching all subsequent cells.
      #     If duplicate cells are present, as is possible when using an Interleave,
      #     each copy of the cell is counted separately.
      # @!attribute [rw] cells_per_row_limit_filter
      #   @return [Integer]
      #     Matches only the first N cells of each row.
      #     If duplicate cells are present, as is possible when using an Interleave,
      #     each copy of the cell is counted separately.
      # @!attribute [rw] cells_per_column_limit_filter
      #   @return [Integer]
      #     Matches only the most recent N cells within each column. For example,
      #     if N=2, this filter would match column +foo:bar+ at timestamps 10 and 9,
      #     skip all earlier cells in +foo:bar+, and then begin matching again in
      #     column +foo:bar2+.
      #     If duplicate cells are present, as is possible when using an Interleave,
      #     each copy of the cell is counted separately.
      # @!attribute [rw] strip_value_transformer
      #   @return [true, false]
      #     Replaces each cell's value with the empty string.
      # @!attribute [rw] apply_label_transformer
      #   @return [String]
      #     Applies the given label to all cells in the output row. This allows
      #     the client to determine which results were produced from which part of
      #     the filter.
      #
      #     Values must be at most 15 characters in length, and match the RE2
      #     pattern +[a-z0-9\\-]++
      #
      #     Due to a technical limitation, it is not currently possible to apply
      #     multiple labels to a cell. As a result, a Chain may have no more than
      #     one sub-filter which contains a +apply_label_transformer+. It is okay for
      #     an Interleave to contain multiple +apply_label_transformers+, as they
      #     will be applied to separate copies of the input. This may be relaxed in
      #     the future.
      class RowFilter
        # A RowFilter which sends rows through several RowFilters in sequence.
        # @!attribute [rw] filters
        #   @return [Array<Google::Bigtable::V2::RowFilter>]
        #     The elements of "filters" are chained together to process the input row:
        #     in row -> f(0) -> intermediate row -> f(1) -> ... -> f(N) -> out row
        #     The full chain is executed atomically.
        class Chain; end

        # A RowFilter which sends each row to each of several component
        # RowFilters and interleaves the results.
        # @!attribute [rw] filters
        #   @return [Array<Google::Bigtable::V2::RowFilter>]
        #     The elements of "filters" all process a copy of the input row, and the
        #     results are pooled, sorted, and combined into a single output row.
        #     If multiple cells are produced with the same column and timestamp,
        #     they will all appear in the output row in an unspecified mutual order.
        #     Consider the following example, with three filters:
        #
        #                                      input row
        #                                          |
        #                -----------------------------------------------------
        #                |                         |                         |
        #               f(0)                      f(1)                      f(2)
        #                |                         |                         |
        #         1: foo,bar,10,x             foo,bar,10,z              far,bar,7,a
        #         2: foo,blah,11,z            far,blah,5,x              far,blah,5,x
        #                |                         |                         |
        #                -----------------------------------------------------
        #                                          |
        #         1:                      foo,bar,10,z   // could have switched with #2
        #         2:                      foo,bar,10,x   // could have switched with #1
        #         3:                      foo,blah,11,z
        #         4:                      far,bar,7,a
        #         5:                      far,blah,5,x   // identical to #6
        #         6:                      far,blah,5,x   // identical to #5
        #
        #     All interleaved filters are executed atomically.
        class Interleave; end

        # A RowFilter which evaluates one of two possible RowFilters, depending on
        # whether or not a predicate RowFilter outputs any cells from the input row.
        #
        # IMPORTANT NOTE: The predicate filter does not execute atomically with the
        # true and false filters, which may lead to inconsistent or unexpected
        # results. Additionally, Condition filters have poor performance, especially
        # when filters are set for the false condition.
        # @!attribute [rw] predicate_filter
        #   @return [Google::Bigtable::V2::RowFilter]
        #     If +predicate_filter+ outputs any cells, then +true_filter+ will be
        #     evaluated on the input row. Otherwise, +false_filter+ will be evaluated.
        # @!attribute [rw] true_filter
        #   @return [Google::Bigtable::V2::RowFilter]
        #     The filter to apply to the input row if +predicate_filter+ returns any
        #     results. If not provided, no results will be returned in the true case.
        # @!attribute [rw] false_filter
        #   @return [Google::Bigtable::V2::RowFilter]
        #     The filter to apply to the input row if +predicate_filter+ does not
        #     return any results. If not provided, no results will be returned in the
        #     false case.
        class Condition; end
      end

      # Specifies a particular change to be made to the contents of a row.
      # @!attribute [rw] set_cell
      #   @return [Google::Bigtable::V2::Mutation::SetCell]
      #     Set a cell's value.
      # @!attribute [rw] delete_from_column
      #   @return [Google::Bigtable::V2::Mutation::DeleteFromColumn]
      #     Deletes cells from a column.
      # @!attribute [rw] delete_from_family
      #   @return [Google::Bigtable::V2::Mutation::DeleteFromFamily]
      #     Deletes cells from a column family.
      # @!attribute [rw] delete_from_row
      #   @return [Google::Bigtable::V2::Mutation::DeleteFromRow]
      #     Deletes cells from the entire row.
      class Mutation
        # A Mutation which sets the value of the specified cell.
        # @!attribute [rw] family_name
        #   @return [String]
        #     The name of the family into which new data should be written.
        #     Must match +[-_.a-zA-Z0-9]++
        # @!attribute [rw] column_qualifier
        #   @return [String]
        #     The qualifier of the column into which new data should be written.
        #     Can be any byte string, including the empty string.
        # @!attribute [rw] timestamp_micros
        #   @return [Integer]
        #     The timestamp of the cell into which new data should be written.
        #     Use -1 for current Bigtable server time.
        #     Otherwise, the client should set this value itself, noting that the
        #     default value is a timestamp of zero if the field is left unspecified.
        #     Values must match the granularity of the table (e.g. micros, millis).
        # @!attribute [rw] value
        #   @return [String]
        #     The value to be written into the specified cell.
        class SetCell; end

        # A Mutation which deletes cells from the specified column, optionally
        # restricting the deletions to a given timestamp range.
        # @!attribute [rw] family_name
        #   @return [String]
        #     The name of the family from which cells should be deleted.
        #     Must match +[-_.a-zA-Z0-9]++
        # @!attribute [rw] column_qualifier
        #   @return [String]
        #     The qualifier of the column from which cells should be deleted.
        #     Can be any byte string, including the empty string.
        # @!attribute [rw] time_range
        #   @return [Google::Bigtable::V2::TimestampRange]
        #     The range of timestamps within which cells should be deleted.
        class DeleteFromColumn; end

        # A Mutation which deletes all cells from the specified column family.
        # @!attribute [rw] family_name
        #   @return [String]
        #     The name of the family from which cells should be deleted.
        #     Must match +[-_.a-zA-Z0-9]++
        class DeleteFromFamily; end

        # A Mutation which deletes all cells from the containing row.
        class DeleteFromRow; end
      end

      # Specifies an atomic read/modify/write operation on the latest value of the
      # specified column.
      # @!attribute [rw] family_name
      #   @return [String]
      #     The name of the family to which the read/modify/write should be applied.
      #     Must match +[-_.a-zA-Z0-9]++
      # @!attribute [rw] column_qualifier
      #   @return [String]
      #     The qualifier of the column to which the read/modify/write should be
      #     applied.
      #     Can be any byte string, including the empty string.
      # @!attribute [rw] append_value
      #   @return [String]
      #     Rule specifying that +append_value+ be appended to the existing value.
      #     If the targeted cell is unset, it will be treated as containing the
      #     empty string.
      # @!attribute [rw] increment_amount
      #   @return [Integer]
      #     Rule specifying that +increment_amount+ be added to the existing value.
      #     If the targeted cell is unset, it will be treated as containing a zero.
      #     Otherwise, the targeted cell must contain an 8-byte value (interpreted
      #     as a 64-bit big-endian signed integer), or the entire request will fail.
      class ReadModifyWriteRule; end
    end
  end
end