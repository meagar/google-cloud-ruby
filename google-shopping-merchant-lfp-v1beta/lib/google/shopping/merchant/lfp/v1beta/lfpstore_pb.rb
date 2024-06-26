# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/shopping/merchant/lfp/v1beta/lfpstore.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/empty_pb'


descriptor_data = "\n2google/shopping/merchant/lfp/v1beta/lfpstore.proto\x12#google.shopping.merchant.lfp.v1beta\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x1bgoogle/protobuf/empty.proto\"\xe6\x05\n\x08LfpStore\x12\x14\n\x04name\x18\x01 \x01(\tB\x06\xe0\x41\x03\xe0\x41\x08\x12\x1b\n\x0etarget_account\x18\x02 \x01(\x03\x42\x03\xe0\x41\x02\x12\x1a\n\nstore_code\x18\x03 \x01(\tB\x06\xe0\x41\x02\xe0\x41\x05\x12\x1a\n\rstore_address\x18\x04 \x01(\tB\x03\xe0\x41\x02\x12\x1c\n\nstore_name\x18\x05 \x01(\tB\x03\xe0\x41\x01H\x00\x88\x01\x01\x12\x1e\n\x0cphone_number\x18\x06 \x01(\tB\x03\xe0\x41\x01H\x01\x88\x01\x01\x12\x1d\n\x0bwebsite_uri\x18\x07 \x01(\tB\x03\xe0\x41\x01H\x02\x88\x01\x01\x12\x1a\n\rgcid_category\x18\x08 \x03(\tB\x03\xe0\x41\x01\x12\x1a\n\x08place_id\x18\t \x01(\tB\x03\xe0\x41\x01H\x03\x88\x01\x01\x12`\n\x0ematching_state\x18\n \x01(\x0e\x32@.google.shopping.merchant.lfp.v1beta.LfpStore.StoreMatchingStateB\x06\xe0\x41\x01\xe0\x41\x03\x12(\n\x13matching_state_hint\x18\x0b \x01(\tB\x06\xe0\x41\x01\xe0\x41\x03H\x04\x88\x01\x01\"}\n\x12StoreMatchingState\x12$\n STORE_MATCHING_STATE_UNSPECIFIED\x10\x00\x12 \n\x1cSTORE_MATCHING_STATE_MATCHED\x10\x01\x12\x1f\n\x1bSTORE_MATCHING_STATE_FAILED\x10\x02:z\xea\x41w\n#merchantapi.googleapis.com/LfpStore\x12;accounts/{account}/lfpStores/{target_merchant}~{store_code}*\tlfpStores2\x08lfpStoreB\r\n\x0b_store_nameB\x0f\n\r_phone_numberB\x0e\n\x0c_website_uriB\x0b\n\t_place_idB\x16\n\x14_matching_state_hint\"O\n\x12GetLfpStoreRequest\x12\x39\n\x04name\x18\x01 \x01(\tB+\xe0\x41\x02\xfa\x41%\n#merchantapi.googleapis.com/LfpStore\"\x9b\x01\n\x15InsertLfpStoreRequest\x12;\n\x06parent\x18\x01 \x01(\tB+\xe0\x41\x02\xfa\x41%\x12#merchantapi.googleapis.com/LfpStore\x12\x45\n\tlfp_store\x18\x02 \x01(\x0b\x32-.google.shopping.merchant.lfp.v1beta.LfpStoreB\x03\xe0\x41\x02\"R\n\x15\x44\x65leteLfpStoreRequest\x12\x39\n\x04name\x18\x01 \x01(\tB+\xe0\x41\x02\xfa\x41%\n#merchantapi.googleapis.com/LfpStore\"\xa1\x01\n\x14ListLfpStoresRequest\x12;\n\x06parent\x18\x01 \x01(\tB+\xe0\x41\x02\xfa\x41%\x12#merchantapi.googleapis.com/LfpStore\x12\x1b\n\x0etarget_account\x18\x02 \x01(\x03\x42\x03\xe0\x41\x02\x12\x16\n\tpage_size\x18\x03 \x01(\x05\x42\x03\xe0\x41\x01\x12\x17\n\npage_token\x18\x04 \x01(\tB\x03\xe0\x41\x01\"s\n\x15ListLfpStoresResponse\x12\x41\n\nlfp_stores\x18\x01 \x03(\x0b\x32-.google.shopping.merchant.lfp.v1beta.LfpStore\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t2\xc8\x06\n\x0fLfpStoreService\x12\xaf\x01\n\x0bGetLfpStore\x12\x37.google.shopping.merchant.lfp.v1beta.GetLfpStoreRequest\x1a-.google.shopping.merchant.lfp.v1beta.LfpStore\"8\xda\x41\x04name\x82\xd3\xe4\x93\x02+\x12)/lfp/v1beta/{name=accounts/*/lfpStores/*}\x12\xd3\x01\n\x0eInsertLfpStore\x12:.google.shopping.merchant.lfp.v1beta.InsertLfpStoreRequest\x1a-.google.shopping.merchant.lfp.v1beta.LfpStore\"V\xda\x41\x10parent,lfp_store\x82\xd3\xe4\x93\x02=\"0/lfp/v1beta/{parent=accounts/*}/lfpStores:insert:\tlfp_store\x12\x9e\x01\n\x0e\x44\x65leteLfpStore\x12:.google.shopping.merchant.lfp.v1beta.DeleteLfpStoreRequest\x1a\x16.google.protobuf.Empty\"8\xda\x41\x04name\x82\xd3\xe4\x93\x02+*)/lfp/v1beta/{name=accounts/*/lfpStores/*}\x12\xc2\x01\n\rListLfpStores\x12\x39.google.shopping.merchant.lfp.v1beta.ListLfpStoresRequest\x1a:.google.shopping.merchant.lfp.v1beta.ListLfpStoresResponse\":\xda\x41\x06parent\x82\xd3\xe4\x93\x02+\x12)/lfp/v1beta/{parent=accounts/*}/lfpStores\x1aG\xca\x41\x1amerchantapi.googleapis.com\xd2\x41\'https://www.googleapis.com/auth/contentB{\n\'com.google.shopping.merchant.lfp.v1betaB\rLfpStoreProtoP\x01Z?cloud.google.com/go/shopping/merchant/lfp/apiv1beta/lfppb;lfppbb\x06proto3"

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
  module Shopping
    module Merchant
      module Lfp
        module V1beta
          LfpStore = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.shopping.merchant.lfp.v1beta.LfpStore").msgclass
          LfpStore::StoreMatchingState = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.shopping.merchant.lfp.v1beta.LfpStore.StoreMatchingState").enummodule
          GetLfpStoreRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.shopping.merchant.lfp.v1beta.GetLfpStoreRequest").msgclass
          InsertLfpStoreRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.shopping.merchant.lfp.v1beta.InsertLfpStoreRequest").msgclass
          DeleteLfpStoreRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.shopping.merchant.lfp.v1beta.DeleteLfpStoreRequest").msgclass
          ListLfpStoresRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.shopping.merchant.lfp.v1beta.ListLfpStoresRequest").msgclass
          ListLfpStoresResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.shopping.merchant.lfp.v1beta.ListLfpStoresResponse").msgclass
        end
      end
    end
  end
end
