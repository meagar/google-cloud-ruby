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

require "gapic/common"
require "gapic/config"
require "gapic/config/method"

require "google/maps/fleet_engine/v1/version"

require "google/maps/fleet_engine/v1/vehicle_service/credentials"
require "google/maps/fleet_engine/v1/vehicle_service/paths"
require "google/maps/fleet_engine/v1/vehicle_service/client"
require "google/maps/fleet_engine/v1/vehicle_service/rest"

module Google
  module Maps
    module FleetEngine
      module V1
        ##
        # Vehicle management service.
        #
        # @example Load this service and instantiate a gRPC client
        #
        #     require "google/maps/fleet_engine/v1/vehicle_service"
        #     client = ::Google::Maps::FleetEngine::V1::VehicleService::Client.new
        #
        # @example Load this service and instantiate a REST client
        #
        #     require "google/maps/fleet_engine/v1/vehicle_service/rest"
        #     client = ::Google::Maps::FleetEngine::V1::VehicleService::Rest::Client.new
        #
        module VehicleService
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "vehicle_service", "helpers.rb"
require "google/maps/fleet_engine/v1/vehicle_service/helpers" if ::File.file? helper_path
