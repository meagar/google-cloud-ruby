# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/osconfig/v1/inventory.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/timestamp_pb'
require 'google/type/date_pb'


descriptor_data = "\n(google/cloud/osconfig/v1/inventory.proto\x12\x18google.cloud.osconfig.v1\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x1fgoogle/protobuf/timestamp.proto\x1a\x16google/type/date.proto\"\xda\x15\n\tInventory\x12\x12\n\x04name\x18\x03 \x01(\tB\x04\xe2\x41\x01\x03\x12;\n\x07os_info\x18\x01 \x01(\x0b\x32*.google.cloud.osconfig.v1.Inventory.OsInfo\x12=\n\x05items\x18\x02 \x03(\x0b\x32..google.cloud.osconfig.v1.Inventory.ItemsEntry\x12\x35\n\x0bupdate_time\x18\x04 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x04\xe2\x41\x01\x03\x1a\xb8\x01\n\x06OsInfo\x12\x10\n\x08hostname\x18\t \x01(\t\x12\x11\n\tlong_name\x18\x02 \x01(\t\x12\x12\n\nshort_name\x18\x03 \x01(\t\x12\x0f\n\x07version\x18\x04 \x01(\t\x12\x14\n\x0c\x61rchitecture\x18\x05 \x01(\t\x12\x16\n\x0ekernel_version\x18\x06 \x01(\t\x12\x16\n\x0ekernel_release\x18\x07 \x01(\t\x12\x1e\n\x16osconfig_agent_version\x18\x08 \x01(\t\x1a\xb7\x04\n\x04Item\x12\n\n\x02id\x18\x01 \x01(\t\x12H\n\x0borigin_type\x18\x02 \x01(\x0e\x32\x33.google.cloud.osconfig.v1.Inventory.Item.OriginType\x12/\n\x0b\x63reate_time\x18\x08 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12/\n\x0bupdate_time\x18\t \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12;\n\x04type\x18\x05 \x01(\x0e\x32-.google.cloud.osconfig.v1.Inventory.Item.Type\x12P\n\x11installed_package\x18\x06 \x01(\x0b\x32\x33.google.cloud.osconfig.v1.Inventory.SoftwarePackageH\x00\x12P\n\x11\x61vailable_package\x18\x07 \x01(\x0b\x32\x33.google.cloud.osconfig.v1.Inventory.SoftwarePackageH\x00\"?\n\nOriginType\x12\x1b\n\x17ORIGIN_TYPE_UNSPECIFIED\x10\x00\x12\x14\n\x10INVENTORY_REPORT\x10\x01\"J\n\x04Type\x12\x14\n\x10TYPE_UNSPECIFIED\x10\x00\x12\x15\n\x11INSTALLED_PACKAGE\x10\x01\x12\x15\n\x11\x41VAILABLE_PACKAGE\x10\x02\x42\t\n\x07\x64\x65tails\x1a\xf2\x05\n\x0fSoftwarePackage\x12K\n\x0byum_package\x18\x01 \x01(\x0b\x32\x34.google.cloud.osconfig.v1.Inventory.VersionedPackageH\x00\x12K\n\x0b\x61pt_package\x18\x02 \x01(\x0b\x32\x34.google.cloud.osconfig.v1.Inventory.VersionedPackageH\x00\x12N\n\x0ezypper_package\x18\x03 \x01(\x0b\x32\x34.google.cloud.osconfig.v1.Inventory.VersionedPackageH\x00\x12N\n\x0egooget_package\x18\x04 \x01(\x0b\x32\x34.google.cloud.osconfig.v1.Inventory.VersionedPackageH\x00\x12G\n\x0czypper_patch\x18\x05 \x01(\x0b\x32/.google.cloud.osconfig.v1.Inventory.ZypperPatchH\x00\x12O\n\x0bwua_package\x18\x06 \x01(\x0b\x32\x38.google.cloud.osconfig.v1.Inventory.WindowsUpdatePackageH\x00\x12\\\n\x0bqfe_package\x18\x07 \x01(\x0b\x32\x45.google.cloud.osconfig.v1.Inventory.WindowsQuickFixEngineeringPackageH\x00\x12K\n\x0b\x63os_package\x18\x08 \x01(\x0b\x32\x34.google.cloud.osconfig.v1.Inventory.VersionedPackageH\x00\x12U\n\x13windows_application\x18\t \x01(\x0b\x32\x36.google.cloud.osconfig.v1.Inventory.WindowsApplicationH\x00\x42\t\n\x07\x64\x65tails\x1aO\n\x10VersionedPackage\x12\x14\n\x0cpackage_name\x18\x04 \x01(\t\x12\x14\n\x0c\x61rchitecture\x18\x02 \x01(\t\x12\x0f\n\x07version\x18\x03 \x01(\t\x1aV\n\x0bZypperPatch\x12\x12\n\npatch_name\x18\x05 \x01(\t\x12\x10\n\x08\x63\x61tegory\x18\x02 \x01(\t\x12\x10\n\x08severity\x18\x03 \x01(\t\x12\x0f\n\x07summary\x18\x04 \x01(\t\x1a\x83\x03\n\x14WindowsUpdatePackage\x12\r\n\x05title\x18\x01 \x01(\t\x12\x13\n\x0b\x64\x65scription\x18\x02 \x01(\t\x12\x62\n\ncategories\x18\x03 \x03(\x0b\x32N.google.cloud.osconfig.v1.Inventory.WindowsUpdatePackage.WindowsUpdateCategory\x12\x16\n\x0ekb_article_ids\x18\x04 \x03(\t\x12\x13\n\x0bsupport_url\x18\x0b \x01(\t\x12\x16\n\x0emore_info_urls\x18\x05 \x03(\t\x12\x11\n\tupdate_id\x18\x06 \x01(\t\x12\x17\n\x0frevision_number\x18\x07 \x01(\x05\x12?\n\x1blast_deployment_change_time\x18\n \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x1a\x31\n\x15WindowsUpdateCategory\x12\n\n\x02id\x18\x01 \x01(\t\x12\x0c\n\x04name\x18\x02 \x01(\t\x1a\x8f\x01\n!WindowsQuickFixEngineeringPackage\x12\x0f\n\x07\x63\x61ption\x18\x01 \x01(\t\x12\x13\n\x0b\x64\x65scription\x18\x02 \x01(\t\x12\x12\n\nhot_fix_id\x18\x03 \x01(\t\x12\x30\n\x0cinstall_time\x18\x05 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x1a\x92\x01\n\x12WindowsApplication\x12\x14\n\x0c\x64isplay_name\x18\x01 \x01(\t\x12\x17\n\x0f\x64isplay_version\x18\x02 \x01(\t\x12\x11\n\tpublisher\x18\x03 \x01(\t\x12\'\n\x0cinstall_date\x18\x04 \x01(\x0b\x32\x11.google.type.Date\x12\x11\n\thelp_link\x18\x05 \x01(\t\x1aV\n\nItemsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\x37\n\x05value\x18\x02 \x01(\x0b\x32(.google.cloud.osconfig.v1.Inventory.Item:\x02\x38\x01:n\xea\x41k\n!osconfig.googleapis.com/Inventory\x12\x46projects/{project}/locations/{location}/instances/{instance}/inventory\"\x86\x01\n\x13GetInventoryRequest\x12\x38\n\x04name\x18\x01 \x01(\tB*\xe2\x41\x01\x02\xfa\x41#\n!osconfig.googleapis.com/Inventory\x12\x35\n\x04view\x18\x02 \x01(\x0e\x32\'.google.cloud.osconfig.v1.InventoryView\"\xc0\x01\n\x16ListInventoriesRequest\x12\x38\n\x06parent\x18\x01 \x01(\tB(\xe2\x41\x01\x02\xfa\x41!\n\x1f\x63ompute.googleapis.com/Instance\x12\x35\n\x04view\x18\x02 \x01(\x0e\x32\'.google.cloud.osconfig.v1.InventoryView\x12\x11\n\tpage_size\x18\x03 \x01(\x05\x12\x12\n\npage_token\x18\x04 \x01(\t\x12\x0e\n\x06\x66ilter\x18\x05 \x01(\t\"l\n\x17ListInventoriesResponse\x12\x38\n\x0binventories\x18\x01 \x03(\x0b\x32#.google.cloud.osconfig.v1.Inventory\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t*D\n\rInventoryView\x12\x1e\n\x1aINVENTORY_VIEW_UNSPECIFIED\x10\x00\x12\t\n\x05\x42\x41SIC\x10\x01\x12\x08\n\x04\x46ULL\x10\x02\x42\xbb\x01\n\x1c\x63om.google.cloud.osconfig.v1B\x0bInventoriesP\x01Z8cloud.google.com/go/osconfig/apiv1/osconfigpb;osconfigpb\xaa\x02\x18Google.Cloud.OsConfig.V1\xca\x02\x18Google\\Cloud\\OsConfig\\V1\xea\x02\x1bGoogle::Cloud::OsConfig::V1b\x06proto3"

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
    ["google.protobuf.Timestamp", "google/protobuf/timestamp.proto"],
    ["google.type.Date", "google/type/date.proto"],
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
        Inventory = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1.Inventory").msgclass
        Inventory::OsInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1.Inventory.OsInfo").msgclass
        Inventory::Item = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1.Inventory.Item").msgclass
        Inventory::Item::OriginType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1.Inventory.Item.OriginType").enummodule
        Inventory::Item::Type = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1.Inventory.Item.Type").enummodule
        Inventory::SoftwarePackage = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1.Inventory.SoftwarePackage").msgclass
        Inventory::VersionedPackage = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1.Inventory.VersionedPackage").msgclass
        Inventory::ZypperPatch = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1.Inventory.ZypperPatch").msgclass
        Inventory::WindowsUpdatePackage = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1.Inventory.WindowsUpdatePackage").msgclass
        Inventory::WindowsUpdatePackage::WindowsUpdateCategory = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1.Inventory.WindowsUpdatePackage.WindowsUpdateCategory").msgclass
        Inventory::WindowsQuickFixEngineeringPackage = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1.Inventory.WindowsQuickFixEngineeringPackage").msgclass
        Inventory::WindowsApplication = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1.Inventory.WindowsApplication").msgclass
        GetInventoryRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1.GetInventoryRequest").msgclass
        ListInventoriesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1.ListInventoriesRequest").msgclass
        ListInventoriesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1.ListInventoriesResponse").msgclass
        InventoryView = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1.InventoryView").enummodule
      end
    end
  end
end
