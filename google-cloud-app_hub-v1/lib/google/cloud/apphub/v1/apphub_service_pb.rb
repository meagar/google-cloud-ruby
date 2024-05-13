# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/apphub/v1/apphub_service.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/apphub/v1/application_pb'
require 'google/cloud/apphub/v1/service_pb'
require 'google/cloud/apphub/v1/service_project_attachment_pb'
require 'google/cloud/apphub/v1/workload_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n+google/cloud/apphub/v1/apphub_service.proto\x12\x16google.cloud.apphub.v1\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a(google/cloud/apphub/v1/application.proto\x1a$google/cloud/apphub/v1/service.proto\x1a\x37google/cloud/apphub/v1/service_project_attachment.proto\x1a%google/cloud/apphub/v1/workload.proto\x1a#google/longrunning/operations.proto\x1a\x1bgoogle/protobuf/empty.proto\x1a google/protobuf/field_mask.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"`\n%LookupServiceProjectAttachmentRequest\x12\x37\n\x04name\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\n!locations.googleapis.com/Location\"~\n&LookupServiceProjectAttachmentResponse\x12T\n\x1aservice_project_attachment\x18\x01 \x01(\x0b\x32\x30.google.cloud.apphub.v1.ServiceProjectAttachment\"\xcb\x01\n$ListServiceProjectAttachmentsRequest\x12\x46\n\x06parent\x18\x01 \x01(\tB6\xe0\x41\x02\xfa\x41\x30\x12.apphub.googleapis.com/ServiceProjectAttachment\x12\x16\n\tpage_size\x18\x02 \x01(\x05\x42\x03\xe0\x41\x01\x12\x17\n\npage_token\x18\x03 \x01(\tB\x03\xe0\x41\x01\x12\x13\n\x06\x66ilter\x18\x04 \x01(\tB\x03\xe0\x41\x01\x12\x15\n\x08order_by\x18\x05 \x01(\tB\x03\xe0\x41\x01\"\xac\x01\n%ListServiceProjectAttachmentsResponse\x12U\n\x1bservice_project_attachments\x18\x01 \x03(\x0b\x32\x30.google.cloud.apphub.v1.ServiceProjectAttachment\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\x12\x13\n\x0bunreachable\x18\x03 \x03(\t\"\x8f\x02\n%CreateServiceProjectAttachmentRequest\x12\x46\n\x06parent\x18\x01 \x01(\tB6\xe0\x41\x02\xfa\x41\x30\x12.apphub.googleapis.com/ServiceProjectAttachment\x12*\n\x1dservice_project_attachment_id\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12Y\n\x1aservice_project_attachment\x18\x03 \x01(\x0b\x32\x30.google.cloud.apphub.v1.ServiceProjectAttachmentB\x03\xe0\x41\x02\x12\x17\n\nrequest_id\x18\x04 \x01(\tB\x03\xe0\x41\x01\"j\n\"GetServiceProjectAttachmentRequest\x12\x44\n\x04name\x18\x01 \x01(\tB6\xe0\x41\x02\xfa\x41\x30\n.apphub.googleapis.com/ServiceProjectAttachment\"\x86\x01\n%DeleteServiceProjectAttachmentRequest\x12\x44\n\x04name\x18\x01 \x01(\tB6\xe0\x41\x02\xfa\x41\x30\n.apphub.googleapis.com/ServiceProjectAttachment\x12\x17\n\nrequest_id\x18\x02 \x01(\tB\x03\xe0\x41\x01\"`\n%DetachServiceProjectAttachmentRequest\x12\x37\n\x04name\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\n!locations.googleapis.com/Location\"(\n&DetachServiceProjectAttachmentResponse\"\xa9\x01\n\x13ListServicesRequest\x12\x35\n\x06parent\x18\x01 \x01(\tB%\xe0\x41\x02\xfa\x41\x1f\x12\x1d\x61pphub.googleapis.com/Service\x12\x16\n\tpage_size\x18\x02 \x01(\x05\x42\x03\xe0\x41\x01\x12\x17\n\npage_token\x18\x03 \x01(\tB\x03\xe0\x41\x01\x12\x13\n\x06\x66ilter\x18\x04 \x01(\tB\x03\xe0\x41\x01\x12\x15\n\x08order_by\x18\x05 \x01(\tB\x03\xe0\x41\x01\"w\n\x14ListServicesResponse\x12\x31\n\x08services\x18\x01 \x03(\x0b\x32\x1f.google.cloud.apphub.v1.Service\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\x12\x13\n\x0bunreachable\x18\x03 \x03(\t\"\xbd\x01\n\x1dListDiscoveredServicesRequest\x12?\n\x06parent\x18\x01 \x01(\tB/\xe0\x41\x02\xfa\x41)\x12\'apphub.googleapis.com/DiscoveredService\x12\x16\n\tpage_size\x18\x02 \x01(\x05\x42\x03\xe0\x41\x01\x12\x17\n\npage_token\x18\x03 \x01(\tB\x03\xe0\x41\x01\x12\x13\n\x06\x66ilter\x18\x04 \x01(\tB\x03\xe0\x41\x01\x12\x15\n\x08order_by\x18\x05 \x01(\tB\x03\xe0\x41\x01\"\x96\x01\n\x1eListDiscoveredServicesResponse\x12\x46\n\x13\x64iscovered_services\x18\x01 \x03(\x0b\x32).google.cloud.apphub.v1.DiscoveredService\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\x12\x13\n\x0bunreachable\x18\x03 \x03(\t\"\xb6\x01\n\x14\x43reateServiceRequest\x12\x35\n\x06parent\x18\x01 \x01(\tB%\xe0\x41\x02\xfa\x41\x1f\x12\x1d\x61pphub.googleapis.com/Service\x12\x17\n\nservice_id\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12\x35\n\x07service\x18\x03 \x01(\x0b\x32\x1f.google.cloud.apphub.v1.ServiceB\x03\xe0\x41\x02\x12\x17\n\nrequest_id\x18\x04 \x01(\tB\x03\xe0\x41\x01\"H\n\x11GetServiceRequest\x12\x33\n\x04name\x18\x01 \x01(\tB%\xe0\x41\x02\xfa\x41\x1f\n\x1d\x61pphub.googleapis.com/Service\"\\\n\x1bGetDiscoveredServiceRequest\x12=\n\x04name\x18\x01 \x01(\tB/\xe0\x41\x02\xfa\x41)\n\'apphub.googleapis.com/DiscoveredService\"s\n\x1eLookupDiscoveredServiceRequest\x12?\n\x06parent\x18\x01 \x01(\tB/\xe0\x41\x02\xfa\x41)\x12\'apphub.googleapis.com/DiscoveredService\x12\x10\n\x03uri\x18\x02 \x01(\tB\x03\xe0\x41\x02\"h\n\x1fLookupDiscoveredServiceResponse\x12\x45\n\x12\x64iscovered_service\x18\x01 \x01(\x0b\x32).google.cloud.apphub.v1.DiscoveredService\"\x9c\x01\n\x14UpdateServiceRequest\x12\x34\n\x0bupdate_mask\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.FieldMaskB\x03\xe0\x41\x02\x12\x35\n\x07service\x18\x02 \x01(\x0b\x32\x1f.google.cloud.apphub.v1.ServiceB\x03\xe0\x41\x02\x12\x17\n\nrequest_id\x18\x03 \x01(\tB\x03\xe0\x41\x01\"d\n\x14\x44\x65leteServiceRequest\x12\x33\n\x04name\x18\x01 \x01(\tB%\xe0\x41\x02\xfa\x41\x1f\n\x1d\x61pphub.googleapis.com/Service\x12\x17\n\nrequest_id\x18\x02 \x01(\tB\x03\xe0\x41\x01\"\xb1\x01\n\x17ListApplicationsRequest\x12\x39\n\x06parent\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\x12!apphub.googleapis.com/Application\x12\x16\n\tpage_size\x18\x02 \x01(\x05\x42\x03\xe0\x41\x01\x12\x17\n\npage_token\x18\x03 \x01(\tB\x03\xe0\x41\x01\x12\x13\n\x06\x66ilter\x18\x04 \x01(\tB\x03\xe0\x41\x01\x12\x15\n\x08order_by\x18\x05 \x01(\tB\x03\xe0\x41\x01\"\x83\x01\n\x18ListApplicationsResponse\x12\x39\n\x0c\x61pplications\x18\x01 \x03(\x0b\x32#.google.cloud.apphub.v1.Application\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\x12\x13\n\x0bunreachable\x18\x03 \x03(\t\"\xca\x01\n\x18\x43reateApplicationRequest\x12\x39\n\x06parent\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\x12!apphub.googleapis.com/Application\x12\x1b\n\x0e\x61pplication_id\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12=\n\x0b\x61pplication\x18\x03 \x01(\x0b\x32#.google.cloud.apphub.v1.ApplicationB\x03\xe0\x41\x02\x12\x17\n\nrequest_id\x18\x04 \x01(\tB\x03\xe0\x41\x01\"P\n\x15GetApplicationRequest\x12\x37\n\x04name\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\n!apphub.googleapis.com/Application\"\xa8\x01\n\x18UpdateApplicationRequest\x12\x34\n\x0bupdate_mask\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.FieldMaskB\x03\xe0\x41\x02\x12=\n\x0b\x61pplication\x18\x02 \x01(\x0b\x32#.google.cloud.apphub.v1.ApplicationB\x03\xe0\x41\x02\x12\x17\n\nrequest_id\x18\x03 \x01(\tB\x03\xe0\x41\x01\"l\n\x18\x44\x65leteApplicationRequest\x12\x37\n\x04name\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\n!apphub.googleapis.com/Application\x12\x17\n\nrequest_id\x18\x02 \x01(\tB\x03\xe0\x41\x01\"\xab\x01\n\x14ListWorkloadsRequest\x12\x36\n\x06parent\x18\x01 \x01(\tB&\xe0\x41\x02\xfa\x41 \x12\x1e\x61pphub.googleapis.com/Workload\x12\x16\n\tpage_size\x18\x02 \x01(\x05\x42\x03\xe0\x41\x01\x12\x17\n\npage_token\x18\x03 \x01(\tB\x03\xe0\x41\x01\x12\x13\n\x06\x66ilter\x18\x04 \x01(\tB\x03\xe0\x41\x01\x12\x15\n\x08order_by\x18\x05 \x01(\tB\x03\xe0\x41\x01\"z\n\x15ListWorkloadsResponse\x12\x33\n\tworkloads\x18\x01 \x03(\x0b\x32 .google.cloud.apphub.v1.Workload\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\x12\x13\n\x0bunreachable\x18\x03 \x03(\t\"\xbf\x01\n\x1eListDiscoveredWorkloadsRequest\x12@\n\x06parent\x18\x01 \x01(\tB0\xe0\x41\x02\xfa\x41*\x12(apphub.googleapis.com/DiscoveredWorkload\x12\x16\n\tpage_size\x18\x02 \x01(\x05\x42\x03\xe0\x41\x01\x12\x17\n\npage_token\x18\x03 \x01(\tB\x03\xe0\x41\x01\x12\x13\n\x06\x66ilter\x18\x04 \x01(\tB\x03\xe0\x41\x01\x12\x15\n\x08order_by\x18\x05 \x01(\tB\x03\xe0\x41\x01\"\x99\x01\n\x1fListDiscoveredWorkloadsResponse\x12H\n\x14\x64iscovered_workloads\x18\x01 \x03(\x0b\x32*.google.cloud.apphub.v1.DiscoveredWorkload\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\x12\x13\n\x0bunreachable\x18\x03 \x03(\t\"\xbb\x01\n\x15\x43reateWorkloadRequest\x12\x36\n\x06parent\x18\x01 \x01(\tB&\xe0\x41\x02\xfa\x41 \x12\x1e\x61pphub.googleapis.com/Workload\x12\x18\n\x0bworkload_id\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12\x37\n\x08workload\x18\x03 \x01(\x0b\x32 .google.cloud.apphub.v1.WorkloadB\x03\xe0\x41\x02\x12\x17\n\nrequest_id\x18\x04 \x01(\tB\x03\xe0\x41\x01\"J\n\x12GetWorkloadRequest\x12\x34\n\x04name\x18\x01 \x01(\tB&\xe0\x41\x02\xfa\x41 \n\x1e\x61pphub.googleapis.com/Workload\"^\n\x1cGetDiscoveredWorkloadRequest\x12>\n\x04name\x18\x01 \x01(\tB0\xe0\x41\x02\xfa\x41*\n(apphub.googleapis.com/DiscoveredWorkload\"u\n\x1fLookupDiscoveredWorkloadRequest\x12@\n\x06parent\x18\x01 \x01(\tB0\xe0\x41\x02\xfa\x41*\x12(apphub.googleapis.com/DiscoveredWorkload\x12\x10\n\x03uri\x18\x02 \x01(\tB\x03\xe0\x41\x02\"k\n LookupDiscoveredWorkloadResponse\x12G\n\x13\x64iscovered_workload\x18\x01 \x01(\x0b\x32*.google.cloud.apphub.v1.DiscoveredWorkload\"\x9f\x01\n\x15UpdateWorkloadRequest\x12\x34\n\x0bupdate_mask\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.FieldMaskB\x03\xe0\x41\x02\x12\x37\n\x08workload\x18\x02 \x01(\x0b\x32 .google.cloud.apphub.v1.WorkloadB\x03\xe0\x41\x02\x12\x17\n\nrequest_id\x18\x03 \x01(\tB\x03\xe0\x41\x01\"f\n\x15\x44\x65leteWorkloadRequest\x12\x34\n\x04name\x18\x01 \x01(\tB&\xe0\x41\x02\xfa\x41 \n\x1e\x61pphub.googleapis.com/Workload\x12\x17\n\nrequest_id\x18\x02 \x01(\tB\x03\xe0\x41\x01\"\x80\x02\n\x11OperationMetadata\x12\x34\n\x0b\x63reate_time\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x31\n\x08\x65nd_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x13\n\x06target\x18\x03 \x01(\tB\x03\xe0\x41\x03\x12\x11\n\x04verb\x18\x04 \x01(\tB\x03\xe0\x41\x03\x12\x1b\n\x0estatus_message\x18\x05 \x01(\tB\x03\xe0\x41\x03\x12#\n\x16requested_cancellation\x18\x06 \x01(\x08\x42\x03\xe0\x41\x03\x12\x18\n\x0b\x61pi_version\x18\x07 \x01(\tB\x03\xe0\x41\x03\x32\xa7/\n\x06\x41ppHub\x12\xf0\x01\n\x1eLookupServiceProjectAttachment\x12=.google.cloud.apphub.v1.LookupServiceProjectAttachmentRequest\x1a>.google.cloud.apphub.v1.LookupServiceProjectAttachmentResponse\"O\xda\x41\x04name\x82\xd3\xe4\x93\x02\x42\x12@/v1/{name=projects/*/locations/*}:lookupServiceProjectAttachment\x12\xec\x01\n\x1dListServiceProjectAttachments\x12<.google.cloud.apphub.v1.ListServiceProjectAttachmentsRequest\x1a=.google.cloud.apphub.v1.ListServiceProjectAttachmentsResponse\"N\xda\x41\x06parent\x82\xd3\xe4\x93\x02?\x12=/v1/{parent=projects/*/locations/*}/serviceProjectAttachments\x12\xd4\x02\n\x1e\x43reateServiceProjectAttachment\x12=.google.cloud.apphub.v1.CreateServiceProjectAttachmentRequest\x1a\x1d.google.longrunning.Operation\"\xd3\x01\xca\x41-\n\x18ServiceProjectAttachment\x12\x11OperationMetadata\xda\x41?parent,service_project_attachment,service_project_attachment_id\x82\xd3\xe4\x93\x02[\"=/v1/{parent=projects/*/locations/*}/serviceProjectAttachments:\x1aservice_project_attachment\x12\xd9\x01\n\x1bGetServiceProjectAttachment\x12:.google.cloud.apphub.v1.GetServiceProjectAttachmentRequest\x1a\x30.google.cloud.apphub.v1.ServiceProjectAttachment\"L\xda\x41\x04name\x82\xd3\xe4\x93\x02?\x12=/v1/{name=projects/*/locations/*/serviceProjectAttachments/*}\x12\xf9\x01\n\x1e\x44\x65leteServiceProjectAttachment\x12=.google.cloud.apphub.v1.DeleteServiceProjectAttachmentRequest\x1a\x1d.google.longrunning.Operation\"y\xca\x41*\n\x15google.protobuf.Empty\x12\x11OperationMetadata\xda\x41\x04name\x82\xd3\xe4\x93\x02?*=/v1/{name=projects/*/locations/*/serviceProjectAttachments/*}\x12\xf3\x01\n\x1e\x44\x65tachServiceProjectAttachment\x12=.google.cloud.apphub.v1.DetachServiceProjectAttachmentRequest\x1a>.google.cloud.apphub.v1.DetachServiceProjectAttachmentResponse\"R\xda\x41\x04name\x82\xd3\xe4\x93\x02\x45\"@/v1/{name=projects/*/locations/*}:detachServiceProjectAttachment:\x01*\x12\xd0\x01\n\x16ListDiscoveredServices\x12\x35.google.cloud.apphub.v1.ListDiscoveredServicesRequest\x1a\x36.google.cloud.apphub.v1.ListDiscoveredServicesResponse\"G\xda\x41\x06parent\x82\xd3\xe4\x93\x02\x38\x12\x36/v1/{parent=projects/*/locations/*}/discoveredServices\x12\xbd\x01\n\x14GetDiscoveredService\x12\x33.google.cloud.apphub.v1.GetDiscoveredServiceRequest\x1a).google.cloud.apphub.v1.DiscoveredService\"E\xda\x41\x04name\x82\xd3\xe4\x93\x02\x38\x12\x36/v1/{name=projects/*/locations/*/discoveredServices/*}\x12\xde\x01\n\x17LookupDiscoveredService\x12\x36.google.cloud.apphub.v1.LookupDiscoveredServiceRequest\x1a\x37.google.cloud.apphub.v1.LookupDiscoveredServiceResponse\"R\xda\x41\nparent,uri\x82\xd3\xe4\x93\x02?\x12=/v1/{parent=projects/*/locations/*}/discoveredServices:lookup\x12\xb7\x01\n\x0cListServices\x12+.google.cloud.apphub.v1.ListServicesRequest\x1a,.google.cloud.apphub.v1.ListServicesResponse\"L\xda\x41\x06parent\x82\xd3\xe4\x93\x02=\x12;/v1/{parent=projects/*/locations/*/applications/*}/services\x12\xe6\x01\n\rCreateService\x12,.google.cloud.apphub.v1.CreateServiceRequest\x1a\x1d.google.longrunning.Operation\"\x87\x01\xca\x41\x1c\n\x07Service\x12\x11OperationMetadata\xda\x41\x19parent,service,service_id\x82\xd3\xe4\x93\x02\x46\";/v1/{parent=projects/*/locations/*/applications/*}/services:\x07service\x12\xa4\x01\n\nGetService\x12).google.cloud.apphub.v1.GetServiceRequest\x1a\x1f.google.cloud.apphub.v1.Service\"J\xda\x41\x04name\x82\xd3\xe4\x93\x02=\x12;/v1/{name=projects/*/locations/*/applications/*/services/*}\x12\xe8\x01\n\rUpdateService\x12,.google.cloud.apphub.v1.UpdateServiceRequest\x1a\x1d.google.longrunning.Operation\"\x89\x01\xca\x41\x1c\n\x07Service\x12\x11OperationMetadata\xda\x41\x13service,update_mask\x82\xd3\xe4\x93\x02N2C/v1/{service.name=projects/*/locations/*/applications/*/services/*}:\x07service\x12\xd5\x01\n\rDeleteService\x12,.google.cloud.apphub.v1.DeleteServiceRequest\x1a\x1d.google.longrunning.Operation\"w\xca\x41*\n\x15google.protobuf.Empty\x12\x11OperationMetadata\xda\x41\x04name\x82\xd3\xe4\x93\x02=*;/v1/{name=projects/*/locations/*/applications/*/services/*}\x12\xd4\x01\n\x17ListDiscoveredWorkloads\x12\x36.google.cloud.apphub.v1.ListDiscoveredWorkloadsRequest\x1a\x37.google.cloud.apphub.v1.ListDiscoveredWorkloadsResponse\"H\xda\x41\x06parent\x82\xd3\xe4\x93\x02\x39\x12\x37/v1/{parent=projects/*/locations/*}/discoveredWorkloads\x12\xc1\x01\n\x15GetDiscoveredWorkload\x12\x34.google.cloud.apphub.v1.GetDiscoveredWorkloadRequest\x1a*.google.cloud.apphub.v1.DiscoveredWorkload\"F\xda\x41\x04name\x82\xd3\xe4\x93\x02\x39\x12\x37/v1/{name=projects/*/locations/*/discoveredWorkloads/*}\x12\xe2\x01\n\x18LookupDiscoveredWorkload\x12\x37.google.cloud.apphub.v1.LookupDiscoveredWorkloadRequest\x1a\x38.google.cloud.apphub.v1.LookupDiscoveredWorkloadResponse\"S\xda\x41\nparent,uri\x82\xd3\xe4\x93\x02@\x12>/v1/{parent=projects/*/locations/*}/discoveredWorkloads:lookup\x12\xbb\x01\n\rListWorkloads\x12,.google.cloud.apphub.v1.ListWorkloadsRequest\x1a-.google.cloud.apphub.v1.ListWorkloadsResponse\"M\xda\x41\x06parent\x82\xd3\xe4\x93\x02>\x12</v1/{parent=projects/*/locations/*/applications/*}/workloads\x12\xed\x01\n\x0e\x43reateWorkload\x12-.google.cloud.apphub.v1.CreateWorkloadRequest\x1a\x1d.google.longrunning.Operation\"\x8c\x01\xca\x41\x1d\n\x08Workload\x12\x11OperationMetadata\xda\x41\x1bparent,workload,workload_id\x82\xd3\xe4\x93\x02H\"</v1/{parent=projects/*/locations/*/applications/*}/workloads:\x08workload\x12\xa8\x01\n\x0bGetWorkload\x12*.google.cloud.apphub.v1.GetWorkloadRequest\x1a .google.cloud.apphub.v1.Workload\"K\xda\x41\x04name\x82\xd3\xe4\x93\x02>\x12</v1/{name=projects/*/locations/*/applications/*/workloads/*}\x12\xef\x01\n\x0eUpdateWorkload\x12-.google.cloud.apphub.v1.UpdateWorkloadRequest\x1a\x1d.google.longrunning.Operation\"\x8e\x01\xca\x41\x1d\n\x08Workload\x12\x11OperationMetadata\xda\x41\x14workload,update_mask\x82\xd3\xe4\x93\x02Q2E/v1/{workload.name=projects/*/locations/*/applications/*/workloads/*}:\x08workload\x12\xd8\x01\n\x0e\x44\x65leteWorkload\x12-.google.cloud.apphub.v1.DeleteWorkloadRequest\x1a\x1d.google.longrunning.Operation\"x\xca\x41*\n\x15google.protobuf.Empty\x12\x11OperationMetadata\xda\x41\x04name\x82\xd3\xe4\x93\x02>*</v1/{name=projects/*/locations/*/applications/*/workloads/*}\x12\xb8\x01\n\x10ListApplications\x12/.google.cloud.apphub.v1.ListApplicationsRequest\x1a\x30.google.cloud.apphub.v1.ListApplicationsResponse\"A\xda\x41\x06parent\x82\xd3\xe4\x93\x02\x32\x12\x30/v1/{parent=projects/*/locations/*}/applications\x12\xf3\x01\n\x11\x43reateApplication\x12\x30.google.cloud.apphub.v1.CreateApplicationRequest\x1a\x1d.google.longrunning.Operation\"\x8c\x01\xca\x41 \n\x0b\x41pplication\x12\x11OperationMetadata\xda\x41!parent,application,application_id\x82\xd3\xe4\x93\x02?\"0/v1/{parent=projects/*/locations/*}/applications:\x0b\x61pplication\x12\xa5\x01\n\x0eGetApplication\x12-.google.cloud.apphub.v1.GetApplicationRequest\x1a#.google.cloud.apphub.v1.Application\"?\xda\x41\x04name\x82\xd3\xe4\x93\x02\x32\x12\x30/v1/{name=projects/*/locations/*/applications/*}\x12\xf5\x01\n\x11UpdateApplication\x12\x30.google.cloud.apphub.v1.UpdateApplicationRequest\x1a\x1d.google.longrunning.Operation\"\x8e\x01\xca\x41 \n\x0b\x41pplication\x12\x11OperationMetadata\xda\x41\x17\x61pplication,update_mask\x82\xd3\xe4\x93\x02K2</v1/{application.name=projects/*/locations/*/applications/*}:\x0b\x61pplication\x12\xd2\x01\n\x11\x44\x65leteApplication\x12\x30.google.cloud.apphub.v1.DeleteApplicationRequest\x1a\x1d.google.longrunning.Operation\"l\xca\x41*\n\x15google.protobuf.Empty\x12\x11OperationMetadata\xda\x41\x04name\x82\xd3\xe4\x93\x02\x32*0/v1/{name=projects/*/locations/*/applications/*}\x1aI\xca\x41\x15\x61pphub.googleapis.com\xd2\x41.https://www.googleapis.com/auth/cloud-platformB\xb4\x01\n\x1a\x63om.google.cloud.apphub.v1B\x12\x41pphubServiceProtoP\x01Z2cloud.google.com/go/apphub/apiv1/apphubpb;apphubpb\xaa\x02\x16Google.Cloud.AppHub.V1\xca\x02\x16Google\\Cloud\\AppHub\\V1\xea\x02\x19Google::Cloud::AppHub::V1b\x06proto3"

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
    ["google.cloud.apphub.v1.ServiceProjectAttachment", "google/cloud/apphub/v1/service_project_attachment.proto"],
    ["google.cloud.apphub.v1.Service", "google/cloud/apphub/v1/service.proto"],
    ["google.protobuf.FieldMask", "google/protobuf/field_mask.proto"],
    ["google.cloud.apphub.v1.Application", "google/cloud/apphub/v1/application.proto"],
    ["google.cloud.apphub.v1.Workload", "google/cloud/apphub/v1/workload.proto"],
    ["google.protobuf.Timestamp", "google/protobuf/timestamp.proto"],
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
    module AppHub
      module V1
        LookupServiceProjectAttachmentRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apphub.v1.LookupServiceProjectAttachmentRequest").msgclass
        LookupServiceProjectAttachmentResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apphub.v1.LookupServiceProjectAttachmentResponse").msgclass
        ListServiceProjectAttachmentsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apphub.v1.ListServiceProjectAttachmentsRequest").msgclass
        ListServiceProjectAttachmentsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apphub.v1.ListServiceProjectAttachmentsResponse").msgclass
        CreateServiceProjectAttachmentRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apphub.v1.CreateServiceProjectAttachmentRequest").msgclass
        GetServiceProjectAttachmentRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apphub.v1.GetServiceProjectAttachmentRequest").msgclass
        DeleteServiceProjectAttachmentRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apphub.v1.DeleteServiceProjectAttachmentRequest").msgclass
        DetachServiceProjectAttachmentRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apphub.v1.DetachServiceProjectAttachmentRequest").msgclass
        DetachServiceProjectAttachmentResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apphub.v1.DetachServiceProjectAttachmentResponse").msgclass
        ListServicesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apphub.v1.ListServicesRequest").msgclass
        ListServicesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apphub.v1.ListServicesResponse").msgclass
        ListDiscoveredServicesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apphub.v1.ListDiscoveredServicesRequest").msgclass
        ListDiscoveredServicesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apphub.v1.ListDiscoveredServicesResponse").msgclass
        CreateServiceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apphub.v1.CreateServiceRequest").msgclass
        GetServiceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apphub.v1.GetServiceRequest").msgclass
        GetDiscoveredServiceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apphub.v1.GetDiscoveredServiceRequest").msgclass
        LookupDiscoveredServiceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apphub.v1.LookupDiscoveredServiceRequest").msgclass
        LookupDiscoveredServiceResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apphub.v1.LookupDiscoveredServiceResponse").msgclass
        UpdateServiceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apphub.v1.UpdateServiceRequest").msgclass
        DeleteServiceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apphub.v1.DeleteServiceRequest").msgclass
        ListApplicationsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apphub.v1.ListApplicationsRequest").msgclass
        ListApplicationsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apphub.v1.ListApplicationsResponse").msgclass
        CreateApplicationRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apphub.v1.CreateApplicationRequest").msgclass
        GetApplicationRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apphub.v1.GetApplicationRequest").msgclass
        UpdateApplicationRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apphub.v1.UpdateApplicationRequest").msgclass
        DeleteApplicationRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apphub.v1.DeleteApplicationRequest").msgclass
        ListWorkloadsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apphub.v1.ListWorkloadsRequest").msgclass
        ListWorkloadsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apphub.v1.ListWorkloadsResponse").msgclass
        ListDiscoveredWorkloadsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apphub.v1.ListDiscoveredWorkloadsRequest").msgclass
        ListDiscoveredWorkloadsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apphub.v1.ListDiscoveredWorkloadsResponse").msgclass
        CreateWorkloadRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apphub.v1.CreateWorkloadRequest").msgclass
        GetWorkloadRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apphub.v1.GetWorkloadRequest").msgclass
        GetDiscoveredWorkloadRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apphub.v1.GetDiscoveredWorkloadRequest").msgclass
        LookupDiscoveredWorkloadRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apphub.v1.LookupDiscoveredWorkloadRequest").msgclass
        LookupDiscoveredWorkloadResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apphub.v1.LookupDiscoveredWorkloadResponse").msgclass
        UpdateWorkloadRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apphub.v1.UpdateWorkloadRequest").msgclass
        DeleteWorkloadRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apphub.v1.DeleteWorkloadRequest").msgclass
        OperationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apphub.v1.OperationMetadata").msgclass
      end
    end
  end
end
