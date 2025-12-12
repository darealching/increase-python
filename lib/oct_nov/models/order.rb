# frozen_string_literal: true

module OctNov
  module Models
    class Order < OctNov::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [Integer, nil]
      optional :id, Integer

      # @!attribute complete
      #
      #   @return [Boolean, nil]
      optional :complete, OctNov::Internal::Type::Boolean

      # @!attribute pet_id
      #
      #   @return [Integer, nil]
      optional :pet_id, Integer, api_name: :petId

      # @!attribute quantity
      #
      #   @return [Integer, nil]
      optional :quantity, Integer

      # @!attribute ship_date
      #
      #   @return [Time, nil]
      optional :ship_date, Time, api_name: :shipDate

      # @!attribute status
      #   Order Status
      #
      #   @return [Symbol, OctNov::Models::Order::Status, nil]
      optional :status, enum: -> { OctNov::Order::Status }

      # @!method initialize(id: nil, complete: nil, pet_id: nil, quantity: nil, ship_date: nil, status: nil)
      #   @param id [Integer]
      #
      #   @param complete [Boolean]
      #
      #   @param pet_id [Integer]
      #
      #   @param quantity [Integer]
      #
      #   @param ship_date [Time]
      #
      #   @param status [Symbol, OctNov::Models::Order::Status] Order Status

      # Order Status
      #
      # @see OctNov::Models::Order#status
      module Status
        extend OctNov::Internal::Type::Enum

        PLACED = :placed
        APPROVED = :approved
        DELIVERED = :delivered

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
