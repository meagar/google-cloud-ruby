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
  module Apps
    module Chat
      module V1
        # A space in Google Chat. Spaces are conversations between two or more users
        # or 1:1 messages between a user and a Chat app.
        # @!attribute [rw] name
        #   @return [::String]
        #     Resource name of the space.
        #
        #     Format: `spaces/{space}`
        # @!attribute [r] type
        #   @deprecated This field is deprecated and may be removed in the next major version update.
        #   @return [::Google::Apps::Chat::V1::Space::Type]
        #     Output only. Deprecated: Use `space_type` instead.
        #     The type of a space.
        # @!attribute [rw] space_type
        #   @return [::Google::Apps::Chat::V1::Space::SpaceType]
        #     The type of space. Required when creating a space or updating the space
        #     type of a space. Output only for other usage.
        # @!attribute [rw] single_user_bot_dm
        #   @return [::Boolean]
        #     Optional. Whether the space is a DM between a Chat app and a single
        #     human.
        # @!attribute [r] threaded
        #   @deprecated This field is deprecated and may be removed in the next major version update.
        #   @return [::Boolean]
        #     Output only. Deprecated: Use `spaceThreadingState` instead.
        #     Whether messages are threaded in this space.
        # @!attribute [rw] display_name
        #   @return [::String]
        #     The space's display name. Required when [creating a
        #     space](https://developers.google.com/workspace/chat/api/reference/rest/v1/spaces/create).
        #     If you receive the error message `ALREADY_EXISTS` when creating a space or
        #     updating the `displayName`, try a different `displayName`. An
        #     existing space within the Google Workspace organization might already use
        #     this display name.
        #
        #     For direct messages, this field might be empty.
        #
        #     Supports up to 128 characters.
        # @!attribute [rw] external_user_allowed
        #   @return [::Boolean]
        #     Immutable. Whether this space permits any Google Chat user as a member.
        #     Input when creating a space in a Google Workspace organization. Omit this
        #     field when creating spaces in the following conditions:
        #
        #       * The authenticated user uses a consumer account (unmanaged user
        #         account). By default, a space created by a consumer account permits any
        #         Google Chat user.
        #
        #       * The space is used to [import data to Google Chat]
        #         (https://developers.google.com/chat/api/guides/import-data-overview)
        #         because import mode spaces must only permit members from the same
        #         Google Workspace organization. However, as part of the [Google
        #         Workspace Developer Preview
        #         Program](https://developers.google.com/workspace/preview), import mode
        #         spaces can permit any Google Chat user so this field can then be set
        #         for import mode spaces.
        #
        #     For existing spaces, this field is output only.
        # @!attribute [r] space_threading_state
        #   @return [::Google::Apps::Chat::V1::Space::SpaceThreadingState]
        #     Output only. The threading state in the Chat space.
        # @!attribute [rw] space_details
        #   @return [::Google::Apps::Chat::V1::Space::SpaceDetails]
        #     Details about the space including description and rules.
        # @!attribute [rw] space_history_state
        #   @return [::Google::Apps::Chat::V1::HistoryState]
        #     The message history state for messages and threads in this space.
        # @!attribute [rw] import_mode
        #   @return [::Boolean]
        #     Optional. Whether this space is created in `Import Mode` as part of a data
        #     migration into Google Workspace. While spaces are being imported, they
        #     aren't visible to users until the import is complete.
        # @!attribute [rw] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Optional. Immutable. For spaces created in Chat, the time the space was
        #     created. This field is output only, except when used in import mode spaces.
        #
        #     For import mode spaces, set this field to the historical timestamp at which
        #     the space was created in the source in order to preserve the original
        #     creation time.
        #
        #     Only populated in the output when `spaceType` is `GROUP_CHAT` or `SPACE`.
        # @!attribute [r] admin_installed
        #   @return [::Boolean]
        #     Output only. For direct message (DM) spaces with a Chat app, whether the
        #     space was created by a Google Workspace administrator. Administrators can
        #     install and set up a direct message with a Chat app on behalf of users in
        #     their organization.
        #
        #     To support admin install, your Chat app must feature direct messaging.
        class Space
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Details about the space including description and rules.
          # @!attribute [rw] description
          #   @return [::String]
          #     Optional. A description of the space. For example, describe the space's
          #     discussion topic, functional purpose, or participants.
          #
          #     Supports up to 150 characters.
          # @!attribute [rw] guidelines
          #   @return [::String]
          #     Optional. The space's rules, expectations, and etiquette.
          #
          #     Supports up to 5,000 characters.
          class SpaceDetails
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Deprecated: Use `SpaceType` instead.
          module Type
            # Reserved.
            TYPE_UNSPECIFIED = 0

            # Conversations between two or more humans.
            ROOM = 1

            # 1:1 Direct Message between a human and a Chat app, where all messages are
            # flat. Note that this doesn't include direct messages between two humans.
            DM = 2
          end

          # The type of space. Required when creating or updating a space. Output only
          # for other usage.
          module SpaceType
            # Reserved.
            SPACE_TYPE_UNSPECIFIED = 0

            # A place where people send messages, share files, and collaborate.
            # A `SPACE` can include Chat apps.
            SPACE = 1

            # Group conversations between 3 or more people.
            # A `GROUP_CHAT` can include Chat apps.
            GROUP_CHAT = 2

            # 1:1 messages between two humans or a human and a Chat app.
            DIRECT_MESSAGE = 3
          end

          # Specifies the type of threading state in the Chat space.
          module SpaceThreadingState
            # Reserved.
            SPACE_THREADING_STATE_UNSPECIFIED = 0

            # Named spaces that support message threads. When users respond to a
            # message, they can reply in-thread, which keeps their response in the
            # context of the original message.
            THREADED_MESSAGES = 2

            # Named spaces where the conversation is organized by topic. Topics and
            # their replies are grouped together.
            GROUPED_MESSAGES = 3

            # Direct messages (DMs) between two people and group conversations between
            # 3 or more people.
            UNTHREADED_MESSAGES = 4
          end
        end

        # A request to create a named space.
        # @!attribute [rw] space
        #   @return [::Google::Apps::Chat::V1::Space]
        #     Required. The `displayName` and `spaceType` fields must be populated.  Only
        #     `SpaceType.SPACE` is supported.
        #
        #     If you receive the error message `ALREADY_EXISTS` when creating a space,
        #     try a different `displayName`. An existing space within the Google
        #     Workspace organization might already use this display name.
        #
        #     The space `name` is assigned on the server so anything specified in this
        #     field will be ignored.
        # @!attribute [rw] request_id
        #   @return [::String]
        #     Optional. A unique identifier for this request.
        #     A random UUID is recommended.
        #     Specifying an existing request ID returns the space created with that ID
        #     instead of creating a new space.
        #     Specifying an existing request ID from the same Chat app with a different
        #     authenticated user returns an error.
        class CreateSpaceRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A request to list the spaces the caller is a member of.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Optional. The maximum number of spaces to return. The service might return
        #     fewer than this value.
        #
        #     If unspecified, at most 100 spaces are returned.
        #
        #     The maximum value is 1000. If you use a value more than 1000, it's
        #     automatically changed to 1000.
        #
        #     Negative values return an `INVALID_ARGUMENT` error.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Optional. A page token, received from a previous list spaces call.
        #     Provide this parameter to retrieve the subsequent page.
        #
        #     When paginating, the filter value should match the call that provided the
        #     page token. Passing a different value may lead to unexpected results.
        # @!attribute [rw] filter
        #   @return [::String]
        #     Optional. A query filter.
        #
        #     You can filter spaces by the space type
        #     ([`space_type`](https://developers.google.com/workspace/chat/api/reference/rest/v1/spaces#spacetype)).
        #
        #     To filter by space type, you must specify valid enum value, such as
        #     `SPACE` or `GROUP_CHAT` (the `space_type` can't be
        #     `SPACE_TYPE_UNSPECIFIED`). To query for multiple space types, use the `OR`
        #     operator.
        #
        #     For example, the following queries are valid:
        #
        #     ```
        #     space_type = "SPACE"
        #     spaceType = "GROUP_CHAT" OR spaceType = "DIRECT_MESSAGE"
        #     ```
        #
        #     Invalid queries are rejected by the server with an `INVALID_ARGUMENT`
        #     error.
        class ListSpacesRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The response for a list spaces request.
        # @!attribute [rw] spaces
        #   @return [::Array<::Google::Apps::Chat::V1::Space>]
        #     List of spaces in the requested (or first) page.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     You can send a token as `pageToken` to retrieve the next page of
        #     results. If empty, there are no subsequent pages.
        class ListSpacesResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A request to return a single space.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Resource name of the space, in the form "spaces/*".
        #
        #     Format: `spaces/{space}`
        class GetSpaceRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A request to get direct message space based on the user resource.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Resource name of the user to find direct message with.
        #
        #     Format: `users/{user}`, where `{user}` is either the `id` for the
        #     [person](https://developers.google.com/people/api/rest/v1/people) from the
        #     People API, or the `id` for the
        #     [user](https://developers.google.com/admin-sdk/directory/reference/rest/v1/users)
        #     in the Directory API. For example, if the People API profile ID is
        #     `123456789`, you can find a direct message with that person by using
        #     `users/123456789` as the `name`. When [authenticated as a
        #     user](https://developers.google.com/workspace/chat/authenticate-authorize-chat-user),
        #     you can use the email as an alias for `{user}`. For example,
        #     `users/example@gmail.com` where `example@gmail.com` is the email of the
        #     Google Chat user.
        class FindDirectMessageRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A request to update a single space.
        # @!attribute [rw] space
        #   @return [::Google::Apps::Chat::V1::Space]
        #     Required. Space with fields to be updated. `Space.name` must be
        #     populated in the form of `spaces/{space}`. Only fields
        #     specified by `update_mask` are updated.
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Required. The updated field paths, comma separated if there are
        #     multiple.
        #
        #     Currently supported field paths:
        #
        #     - `display_name` (Only supports changing the display name of a space with
        #     the `SPACE` type, or when also including the `space_type` mask to change a
        #     `GROUP_CHAT` space type to `SPACE`. Trying to update the display name of a
        #     `GROUP_CHAT` or a `DIRECT_MESSAGE` space results in an invalid argument
        #     error. If you receive the error message `ALREADY_EXISTS` when updating the
        #     `displayName`, try a different `displayName`. An existing space within the
        #     Google Workspace organization might already use this display name.)
        #
        #     - `space_type` (Only supports changing a `GROUP_CHAT` space type to
        #     `SPACE`. Include `display_name` together
        #     with `space_type` in the update mask and ensure that the specified space
        #     has a non-empty display name and the `SPACE` space type. Including the
        #     `space_type` mask and the `SPACE` type in the specified space when updating
        #     the display name is optional if the existing space already has the `SPACE`
        #     type. Trying to update the space type in other ways results in an invalid
        #     argument error).
        #
        #     - `space_details`
        #
        #     - `space_history_state` (Supports [turning history on or off for the
        #     space](https://support.google.com/chat/answer/7664687) if [the organization
        #     allows users to change their history
        #     setting](https://support.google.com/a/answer/7664184).
        #     Warning: mutually exclusive with all other field paths.)
        #
        #     - Developer Preview: `access_settings.audience` (Supports changing the
        #     [access setting](https://support.google.com/chat/answer/11971020) of a
        #     space. If no audience is specified in the access setting, the space's
        #     access setting is updated to restricted. Warning: mutually exclusive with
        #     all other field paths.)
        class UpdateSpaceRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for deleting a space.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Resource name of the space to delete.
        #
        #     Format: `spaces/{space}`
        class DeleteSpaceRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for completing the import process for a space.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Resource name of the import mode space.
        #
        #     Format: `spaces/{space}`
        class CompleteImportSpaceRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for completing the import process for a space.
        # @!attribute [rw] space
        #   @return [::Google::Apps::Chat::V1::Space]
        #     The import mode space.
        class CompleteImportSpaceResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
