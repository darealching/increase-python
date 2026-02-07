# frozen_string_literal: true

module OctNov
  module Models
    # @see OctNov::Resources::Users#create_with_list
    class UserCreateWithListParams < OctNov::Internal::Type::BaseModel
      extend OctNov::Internal::Type::RequestParameters::Converter
      include OctNov::Internal::Type::RequestParameters

      # @!attribute items
      #
      #   @return [Array<OctNov::Models::User>, nil]
      optional :items, -> { OctNov::Internal::Type::ArrayOf[OctNov::User] }

      # @!method initialize(items: nil, request_options: {})
      #   @param items [Array<OctNov::Models::User>]
      #   @param request_options [OctNov::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
