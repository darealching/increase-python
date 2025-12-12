# frozen_string_literal: true

# Standard libraries.
# rubocop:disable Lint/RedundantRequireStatement
require "English"
require "base64"
require "cgi"
require "date"
require "erb"
require "etc"
require "json"
require "net/http"
require "openssl"
require "pathname"
require "rbconfig"
require "securerandom"
require "set"
require "stringio"
require "time"
require "uri"
# rubocop:enable Lint/RedundantRequireStatement

# We already ship the preferred sorbet manifests in the package itself.
# `tapioca` currently does not offer us a way to opt out of unnecessary compilation.
if Object.const_defined?(:Tapioca) &&
   caller.chain([$PROGRAM_NAME]).chain(ARGV).any?(/tapioca/) &&
   ARGV.none?(/dsl/)
  return
end

# Gems.
require "connection_pool"

# Package files.
require_relative "oct_nov/version"
require_relative "oct_nov/internal/util"
require_relative "oct_nov/internal/type/converter"
require_relative "oct_nov/internal/type/unknown"
require_relative "oct_nov/internal/type/boolean"
require_relative "oct_nov/internal/type/file_input"
require_relative "oct_nov/internal/type/enum"
require_relative "oct_nov/internal/type/union"
require_relative "oct_nov/internal/type/array_of"
require_relative "oct_nov/internal/type/hash_of"
require_relative "oct_nov/internal/type/base_model"
require_relative "oct_nov/internal/type/base_page"
require_relative "oct_nov/internal/type/request_parameters"
require_relative "oct_nov/internal"
require_relative "oct_nov/request_options"
require_relative "oct_nov/file_part"
require_relative "oct_nov/errors"
require_relative "oct_nov/internal/transport/base_client"
require_relative "oct_nov/internal/transport/pooled_net_requester"
require_relative "oct_nov/client"
require_relative "oct_nov/models/pet"
require_relative "oct_nov/models/order"
require_relative "oct_nov/models/user"
require_relative "oct_nov/models/category"
require_relative "oct_nov/models/pet_create_params"
require_relative "oct_nov/models/pet_delete_params"
require_relative "oct_nov/models/pet_find_by_status_params"
require_relative "oct_nov/models/pet_find_by_status_response"
require_relative "oct_nov/models/pet_find_by_tags_params"
require_relative "oct_nov/models/pet_find_by_tags_response"
require_relative "oct_nov/models/pet_retrieve_params"
require_relative "oct_nov/models/pet_update_by_id_params"
require_relative "oct_nov/models/pet_update_params"
require_relative "oct_nov/models/pet_upload_image_params"
require_relative "oct_nov/models/pet_upload_image_response"
require_relative "oct_nov/models/store/order_create_params"
require_relative "oct_nov/models/store/order_delete_params"
require_relative "oct_nov/models/store/order_retrieve_params"
require_relative "oct_nov/models/store_list_inventory_params"
require_relative "oct_nov/models/store_list_inventory_response"
require_relative "oct_nov/models/user_create_params"
require_relative "oct_nov/models/user_create_with_list_params"
require_relative "oct_nov/models/user_delete_params"
require_relative "oct_nov/models/user_login_params"
require_relative "oct_nov/models/user_login_response"
require_relative "oct_nov/models/user_logout_params"
require_relative "oct_nov/models/user_retrieve_params"
require_relative "oct_nov/models/user_update_params"
require_relative "oct_nov/models"
require_relative "oct_nov/resources/pets"
require_relative "oct_nov/resources/store"
require_relative "oct_nov/resources/store/orders"
require_relative "oct_nov/resources/users"
