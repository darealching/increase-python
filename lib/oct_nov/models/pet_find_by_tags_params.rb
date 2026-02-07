# frozen_string_literal: true

module OctNov
  module Models
    # @see OctNov::Resources::Pets#find_by_tags
    class PetFindByTagsParams < OctNov::Internal::Type::BaseModel
      extend OctNov::Internal::Type::RequestParameters::Converter
      include OctNov::Internal::Type::RequestParameters

      # @!attribute tags
      #   Tags to filter by
      #
      #   @return [Array<String>, nil]
      optional :tags, OctNov::Internal::Type::ArrayOf[String]

      # @!method initialize(tags: nil, request_options: {})
      #   @param tags [Array<String>] Tags to filter by
      #
      #   @param request_options [OctNov::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
