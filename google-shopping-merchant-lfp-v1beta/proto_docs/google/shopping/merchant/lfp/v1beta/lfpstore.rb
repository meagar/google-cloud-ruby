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
  module Shopping
    module Merchant
      module Lfp
        module V1beta
          # A store for the merchant. This will be used to match to a Google Business
          # Profile listing for the target merchant. If a matching listing can't be
          # found, the inventories or sales submitted with the store code will not be
          # used.
          # @!attribute [r] name
          #   @return [::String]
          #     Output only. Identifier. The name of the `LfpStore` resource.
          #     Format: `accounts/{account}/lfpStores/{target_merchant}~{store_code}`
          # @!attribute [rw] target_account
          #   @return [::Integer]
          #     Required. The Merchant Center id of the merchant to submit the store for.
          # @!attribute [rw] store_code
          #   @return [::String]
          #     Required. Immutable. A store identifier that is unique for the target
          #     merchant.
          # @!attribute [rw] store_address
          #   @return [::String]
          #     Required. The street address of the store.
          #     Example: 1600 Amphitheatre Pkwy, Mountain View, CA 94043, USA.
          # @!attribute [rw] store_name
          #   @return [::String]
          #     Optional. The merchant or store name.
          # @!attribute [rw] phone_number
          #   @return [::String]
          #     Optional. The store phone number in
          #     [E.164](https://en.wikipedia.org/wiki/E.164) format. Example:
          #     `+15556767888`
          # @!attribute [rw] website_uri
          #   @return [::String]
          #     Optional. The website URL for the store or merchant.
          # @!attribute [rw] gcid_category
          #   @return [::Array<::String>]
          #     Optional. [Google My Business category
          #     id](https://gcid-explorer.corp.google.com/static/gcid.html).
          # @!attribute [rw] place_id
          #   @return [::String]
          #     Optional. The [Google Place
          #     Id](https://developers.google.com/maps/documentation/places/web-service/place-id#id-overview)
          #     of the store location.
          # @!attribute [r] matching_state
          #   @return [::Google::Shopping::Merchant::Lfp::V1beta::LfpStore::StoreMatchingState]
          #     Optional. Output only. The state of matching to a Google Business Profile
          #     listing. See
          #     {::Google::Shopping::Merchant::Lfp::V1beta::LfpStore#matching_state_hint matchingStateHint}
          #     for further details if no match is found.
          # @!attribute [r] matching_state_hint
          #   @return [::String]
          #     Optional. Output only. The hint of why the matching has failed. This is
          #     only set when
          #     {::Google::Shopping::Merchant::Lfp::V1beta::LfpStore#matching_state matchingState}=`STORE_MATCHING_STATE_FAILED`.
          #
          #     Possible values are:
          #
          #     - "`linked-store-not-found`": There aren't any Google Business
          #     Profile stores available for matching.
          #     - "`store-match-not-found`": The provided `LfpStore` couldn't be matched to
          #     any of the connected Google Business Profile stores. Merchant Center
          #     account is connected correctly and stores are available on Google Business
          #     Profile, but the `LfpStore` location address does not match with Google
          #     Business Profile stores' addresses. Update the `LfpStore` address or Google
          #     Business Profile store address to match correctly.
          #     - "`store-match-unverified`": The provided `LfpStore` couldn't be matched
          #     to any of the connected Google Business Profile stores, as the matched
          #     Google Business Profile store is unverified. Go through the Google Business
          #     Profile verification process to match correctly.
          class LfpStore
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # The state of matching `LfpStore` to a Google Business Profile listing.
            module StoreMatchingState
              # Store matching state unspecified.
              STORE_MATCHING_STATE_UNSPECIFIED = 0

              # The `LfpStore` is successfully matched with a Google Business Profile
              # store.
              STORE_MATCHING_STATE_MATCHED = 1

              # The `LfpStore` is not matched with a Google Business Profile store.
              STORE_MATCHING_STATE_FAILED = 2
            end
          end

          # Request message for the `GetLfpStore` method.
          # @!attribute [rw] name
          #   @return [::String]
          #     Required. The name of the store to retrieve.
          #     Format: `accounts/{account}/lfpStores/{target_merchant}~{store_code}`
          class GetLfpStoreRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Request message for the InsertLfpStore method.
          # @!attribute [rw] parent
          #   @return [::String]
          #     Required. The LFP provider account
          #     Format: `accounts/{account}`
          # @!attribute [rw] lfp_store
          #   @return [::Google::Shopping::Merchant::Lfp::V1beta::LfpStore]
          #     Required. The store to insert.
          class InsertLfpStoreRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Request message for the DeleteLfpStore method.
          # @!attribute [rw] name
          #   @return [::String]
          #     Required. The name of the store to delete for the target merchant account.
          #     Format: `accounts/{account}/lfpStores/{target_merchant}~{store_code}`
          class DeleteLfpStoreRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Request message for the ListLfpStores method.
          # @!attribute [rw] parent
          #   @return [::String]
          #     Required. The LFP partner.
          #     Format: `accounts/{account}`
          # @!attribute [rw] target_account
          #   @return [::Integer]
          #     Required. The Merchant Center id of the merchant to list stores for.
          # @!attribute [rw] page_size
          #   @return [::Integer]
          #     Optional. The maximum number of `LfpStore` resources for the given account
          #     to return. The service returns fewer than this value if the number of
          #     stores for the given account is less than the `pageSize`. The default value
          #     is 250. The maximum value is 1000; If a value higher than the maximum is
          #     specified, then the `pageSize` will default to the maximum.
          # @!attribute [rw] page_token
          #   @return [::String]
          #     Optional. A page token, received from a previous `ListLfpStoresRequest`
          #     call. Provide the page token to retrieve the subsequent page. When
          #     paginating, all other parameters provided to `ListLfpStoresRequest` must
          #     match the call that provided the page token. The token returned as
          #     {::Google::Shopping::Merchant::Lfp::V1beta::ListLfpStoresResponse#next_page_token nextPageToken}
          #     in the response to the previous request.
          class ListLfpStoresRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Response message for the ListLfpStores method.
          # @!attribute [rw] lfp_stores
          #   @return [::Array<::Google::Shopping::Merchant::Lfp::V1beta::LfpStore>]
          #     The stores from the specified merchant.
          # @!attribute [rw] next_page_token
          #   @return [::String]
          #     A token, which can be sent as `pageToken` to retrieve the next page.
          #     If this field is omitted, there are no subsequent pages.
          class ListLfpStoresResponse
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end
      end
    end
  end
end
