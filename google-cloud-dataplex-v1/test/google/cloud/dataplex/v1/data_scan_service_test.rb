# frozen_string_literal: true

# Copyright 2023 Google LLC
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

require "helper"

require "gapic/grpc/service_stub"

require "google/cloud/dataplex/v1/datascans_pb"
require "google/cloud/dataplex/v1/datascans_services_pb"
require "google/cloud/dataplex/v1/data_scan_service"

class ::Google::Cloud::Dataplex::V1::DataScanService::ClientTest < Minitest::Test
  class ClientStub
    attr_accessor :call_rpc_count, :requests

    def initialize response, operation, &block
      @response = response
      @operation = operation
      @block = block
      @call_rpc_count = 0
      @requests = []
    end

    def call_rpc *args, **kwargs
      @call_rpc_count += 1

      @requests << @block&.call(*args, **kwargs)

      yield @response, @operation if block_given?

      @response
    end
  end

  def test_create_data_scan
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    data_scan = {}
    data_scan_id = "hello world"
    validate_only = true

    create_data_scan_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_data_scan, name
      assert_kind_of ::Google::Cloud::Dataplex::V1::CreateDataScanRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Dataplex::V1::DataScan), request["data_scan"]
      assert_equal "hello world", request["data_scan_id"]
      assert_equal true, request["validate_only"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_data_scan_client_stub do
      # Create client
      client = ::Google::Cloud::Dataplex::V1::DataScanService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_data_scan({ parent: parent, data_scan: data_scan, data_scan_id: data_scan_id, validate_only: validate_only }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_data_scan parent: parent, data_scan: data_scan, data_scan_id: data_scan_id, validate_only: validate_only do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_data_scan ::Google::Cloud::Dataplex::V1::CreateDataScanRequest.new(parent: parent, data_scan: data_scan, data_scan_id: data_scan_id, validate_only: validate_only) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_data_scan({ parent: parent, data_scan: data_scan, data_scan_id: data_scan_id, validate_only: validate_only }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_data_scan(::Google::Cloud::Dataplex::V1::CreateDataScanRequest.new(parent: parent, data_scan: data_scan, data_scan_id: data_scan_id, validate_only: validate_only), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_data_scan_client_stub.call_rpc_count
    end
  end

  def test_update_data_scan
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    data_scan = {}
    update_mask = {}
    validate_only = true

    update_data_scan_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :update_data_scan, name
      assert_kind_of ::Google::Cloud::Dataplex::V1::UpdateDataScanRequest, request
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Dataplex::V1::DataScan), request["data_scan"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::FieldMask), request["update_mask"]
      assert_equal true, request["validate_only"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, update_data_scan_client_stub do
      # Create client
      client = ::Google::Cloud::Dataplex::V1::DataScanService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.update_data_scan({ data_scan: data_scan, update_mask: update_mask, validate_only: validate_only }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.update_data_scan data_scan: data_scan, update_mask: update_mask, validate_only: validate_only do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.update_data_scan ::Google::Cloud::Dataplex::V1::UpdateDataScanRequest.new(data_scan: data_scan, update_mask: update_mask, validate_only: validate_only) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.update_data_scan({ data_scan: data_scan, update_mask: update_mask, validate_only: validate_only }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.update_data_scan(::Google::Cloud::Dataplex::V1::UpdateDataScanRequest.new(data_scan: data_scan, update_mask: update_mask, validate_only: validate_only), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, update_data_scan_client_stub.call_rpc_count
    end
  end

  def test_delete_data_scan
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    delete_data_scan_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :delete_data_scan, name
      assert_kind_of ::Google::Cloud::Dataplex::V1::DeleteDataScanRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, delete_data_scan_client_stub do
      # Create client
      client = ::Google::Cloud::Dataplex::V1::DataScanService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.delete_data_scan({ name: name }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.delete_data_scan name: name do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.delete_data_scan ::Google::Cloud::Dataplex::V1::DeleteDataScanRequest.new(name: name) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.delete_data_scan({ name: name }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.delete_data_scan(::Google::Cloud::Dataplex::V1::DeleteDataScanRequest.new(name: name), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, delete_data_scan_client_stub.call_rpc_count
    end
  end

  def test_get_data_scan
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Dataplex::V1::DataScan.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    view = :DATA_SCAN_VIEW_UNSPECIFIED

    get_data_scan_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_data_scan, name
      assert_kind_of ::Google::Cloud::Dataplex::V1::GetDataScanRequest, request
      assert_equal "hello world", request["name"]
      assert_equal :DATA_SCAN_VIEW_UNSPECIFIED, request["view"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_data_scan_client_stub do
      # Create client
      client = ::Google::Cloud::Dataplex::V1::DataScanService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_data_scan({ name: name, view: view }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_data_scan name: name, view: view do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_data_scan ::Google::Cloud::Dataplex::V1::GetDataScanRequest.new(name: name, view: view) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_data_scan({ name: name, view: view }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_data_scan(::Google::Cloud::Dataplex::V1::GetDataScanRequest.new(name: name, view: view), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_data_scan_client_stub.call_rpc_count
    end
  end

  def test_list_data_scans
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Dataplex::V1::ListDataScansResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"
    filter = "hello world"
    order_by = "hello world"

    list_data_scans_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_data_scans, name
      assert_kind_of ::Google::Cloud::Dataplex::V1::ListDataScansRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      assert_equal "hello world", request["filter"]
      assert_equal "hello world", request["order_by"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_data_scans_client_stub do
      # Create client
      client = ::Google::Cloud::Dataplex::V1::DataScanService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_data_scans({ parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_data_scans parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_data_scans ::Google::Cloud::Dataplex::V1::ListDataScansRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_data_scans({ parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_data_scans(::Google::Cloud::Dataplex::V1::ListDataScansRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_data_scans_client_stub.call_rpc_count
    end
  end

  def test_run_data_scan
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Dataplex::V1::RunDataScanResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    run_data_scan_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :run_data_scan, name
      assert_kind_of ::Google::Cloud::Dataplex::V1::RunDataScanRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, run_data_scan_client_stub do
      # Create client
      client = ::Google::Cloud::Dataplex::V1::DataScanService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.run_data_scan({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.run_data_scan name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.run_data_scan ::Google::Cloud::Dataplex::V1::RunDataScanRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.run_data_scan({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.run_data_scan(::Google::Cloud::Dataplex::V1::RunDataScanRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, run_data_scan_client_stub.call_rpc_count
    end
  end

  def test_get_data_scan_job
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Dataplex::V1::DataScanJob.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    view = :DATA_SCAN_JOB_VIEW_UNSPECIFIED

    get_data_scan_job_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_data_scan_job, name
      assert_kind_of ::Google::Cloud::Dataplex::V1::GetDataScanJobRequest, request
      assert_equal "hello world", request["name"]
      assert_equal :DATA_SCAN_JOB_VIEW_UNSPECIFIED, request["view"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_data_scan_job_client_stub do
      # Create client
      client = ::Google::Cloud::Dataplex::V1::DataScanService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_data_scan_job({ name: name, view: view }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_data_scan_job name: name, view: view do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_data_scan_job ::Google::Cloud::Dataplex::V1::GetDataScanJobRequest.new(name: name, view: view) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_data_scan_job({ name: name, view: view }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_data_scan_job(::Google::Cloud::Dataplex::V1::GetDataScanJobRequest.new(name: name, view: view), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_data_scan_job_client_stub.call_rpc_count
    end
  end

  def test_list_data_scan_jobs
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Dataplex::V1::ListDataScanJobsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"
    filter = "hello world"

    list_data_scan_jobs_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_data_scan_jobs, name
      assert_kind_of ::Google::Cloud::Dataplex::V1::ListDataScanJobsRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      assert_equal "hello world", request["filter"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_data_scan_jobs_client_stub do
      # Create client
      client = ::Google::Cloud::Dataplex::V1::DataScanService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_data_scan_jobs({ parent: parent, page_size: page_size, page_token: page_token, filter: filter }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_data_scan_jobs parent: parent, page_size: page_size, page_token: page_token, filter: filter do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_data_scan_jobs ::Google::Cloud::Dataplex::V1::ListDataScanJobsRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_data_scan_jobs({ parent: parent, page_size: page_size, page_token: page_token, filter: filter }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_data_scan_jobs(::Google::Cloud::Dataplex::V1::ListDataScanJobsRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_data_scan_jobs_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Dataplex::V1::DataScanService::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::Dataplex::V1::DataScanService::Client::Configuration, config
  end

  def test_operations_client
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = nil
    Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Dataplex::V1::DataScanService::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    assert_kind_of ::Google::Cloud::Dataplex::V1::DataScanService::Operations, client.operations_client
  end
end
