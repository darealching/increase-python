# typed: strong

module OctNov
  module Models
    StoreListInventoryResponse =
      T.let(
        OctNov::Internal::Type::HashOf[Integer],
        OctNov::Internal::Type::Converter
      )
  end
end
