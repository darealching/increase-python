# frozen_string_literal: true

module OctNov
  module Models
    # @see OctNov::Resources::Users#login
    class UserLoginParams < OctNov::Internal::Type::BaseModel
      extend OctNov::Internal::Type::RequestParameters::Converter
      include OctNov::Internal::Type::RequestParameters

      # @!attribute password
      #   The password for login in clear text
      #
      #   @return [String, nil]
      optional :password, String

      # @!attribute username
      #   The user name for login
      #
      #   @return [String, nil]
      optional :username, String

      # @!method initialize(password: nil, username: nil, request_options: {})
      #   @param password [String] The password for login in clear text
      #
      #   @param username [String] The user name for login
      #
      #   @param request_options [OctNov::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
