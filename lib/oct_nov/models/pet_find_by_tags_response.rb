# frozen_string_literal: true

module OctNov
  module Models
    # @type [OctNov::Internal::Type::Converter]
    PetFindByTagsResponse = OctNov::Internal::Type::ArrayOf[-> { OctNov::Pet }]
  end
end
