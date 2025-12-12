# typed: strong

module OctNov
  module Models
    PetFindByTagsResponse =
      T.let(
        OctNov::Internal::Type::ArrayOf[OctNov::Pet],
        OctNov::Internal::Type::Converter
      )
  end
end
