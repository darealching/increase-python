# typed: strong

module OctNov
  module Models
    PetFindByStatusResponse =
      T.let(
        OctNov::Internal::Type::ArrayOf[OctNov::Pet],
        OctNov::Internal::Type::Converter
      )
  end
end
