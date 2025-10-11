# frozen_string_literal: true

module OctNov
  module Models
    # @see OctNov::Resources::Pets#find_by_status
    class PetFindByStatusParams < OctNov::Internal::Type::BaseModel
      extend OctNov::Internal::Type::RequestParameters::Converter
      include OctNov::Internal::Type::RequestParameters

      # @!attribute status
      #   Status values that need to be considered for filter
      #
      #   @return [Symbol, OctNov::Models::PetFindByStatusParams::Status, nil]
      optional :status, enum: -> { OctNov::PetFindByStatusParams::Status }

      # @!method initialize(status: nil, request_options: {})
      #   @param status [Symbol, OctNov::Models::PetFindByStatusParams::Status] Status values that need to be considered for filter
      #
      #   @param request_options [OctNov::RequestOptions, Hash{Symbol=>Object}]

      # Status values that need to be considered for filter
      module Status
        extend OctNov::Internal::Type::Enum

        AVAILABLE = :available
        PENDING = :pending
        SOLD = :sold

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
