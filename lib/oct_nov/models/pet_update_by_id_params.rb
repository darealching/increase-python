# frozen_string_literal: true

module OctNov
  module Models
    # @see OctNov::Resources::Pets#update_by_id
    class PetUpdateByIDParams < OctNov::Internal::Type::BaseModel
      extend OctNov::Internal::Type::RequestParameters::Converter
      include OctNov::Internal::Type::RequestParameters

      # @!attribute name
      #   Name of pet that needs to be updated
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute status
      #   Status of pet that needs to be updated
      #
      #   @return [String, nil]
      optional :status, String

      # @!method initialize(name: nil, status: nil, request_options: {})
      #   @param name [String] Name of pet that needs to be updated
      #
      #   @param status [String] Status of pet that needs to be updated
      #
      #   @param request_options [OctNov::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
