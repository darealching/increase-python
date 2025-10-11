# frozen_string_literal: true

module OctNov
  module Models
    # @see OctNov::Resources::Pets#create
    class Pet < OctNov::Internal::Type::BaseModel
      # @!attribute name
      #
      #   @return [String]
      required :name, String

      # @!attribute photo_urls
      #
      #   @return [Array<String>]
      required :photo_urls, OctNov::Internal::Type::ArrayOf[String], api_name: :photoUrls

      # @!attribute id
      #
      #   @return [Integer, nil]
      optional :id, Integer

      # @!attribute category
      #
      #   @return [OctNov::Models::Category, nil]
      optional :category, -> { OctNov::Category }

      # @!attribute status
      #   pet status in the store
      #
      #   @return [Symbol, OctNov::Models::Pet::Status, nil]
      optional :status, enum: -> { OctNov::Pet::Status }

      # @!attribute tags
      #
      #   @return [Array<OctNov::Models::Pet::Tag>, nil]
      optional :tags, -> { OctNov::Internal::Type::ArrayOf[OctNov::Pet::Tag] }

      # @!method initialize(name:, photo_urls:, id: nil, category: nil, status: nil, tags: nil)
      #   @param name [String]
      #
      #   @param photo_urls [Array<String>]
      #
      #   @param id [Integer]
      #
      #   @param category [OctNov::Models::Category]
      #
      #   @param status [Symbol, OctNov::Models::Pet::Status] pet status in the store
      #
      #   @param tags [Array<OctNov::Models::Pet::Tag>]

      # pet status in the store
      #
      # @see OctNov::Models::Pet#status
      module Status
        extend OctNov::Internal::Type::Enum

        AVAILABLE = :available
        PENDING = :pending
        SOLD = :sold

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class Tag < OctNov::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [Integer, nil]
        optional :id, Integer

        # @!attribute name
        #
        #   @return [String, nil]
        optional :name, String

        # @!method initialize(id: nil, name: nil)
        #   @param id [Integer]
        #   @param name [String]
      end
    end
  end
end
