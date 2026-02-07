# typed: strong

module OctNov
  module Models
    class PetFindByStatusParams < OctNov::Internal::Type::BaseModel
      extend OctNov::Internal::Type::RequestParameters::Converter
      include OctNov::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(OctNov::PetFindByStatusParams, OctNov::Internal::AnyHash)
        end

      # Status values that need to be considered for filter
      sig do
        returns(T.nilable(OctNov::PetFindByStatusParams::Status::OrSymbol))
      end
      attr_reader :status

      sig do
        params(status: OctNov::PetFindByStatusParams::Status::OrSymbol).void
      end
      attr_writer :status

      sig do
        params(
          status: OctNov::PetFindByStatusParams::Status::OrSymbol,
          request_options: OctNov::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Status values that need to be considered for filter
        status: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            status: OctNov::PetFindByStatusParams::Status::OrSymbol,
            request_options: OctNov::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Status values that need to be considered for filter
      module Status
        extend OctNov::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, OctNov::PetFindByStatusParams::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AVAILABLE =
          T.let(:available, OctNov::PetFindByStatusParams::Status::TaggedSymbol)
        PENDING =
          T.let(:pending, OctNov::PetFindByStatusParams::Status::TaggedSymbol)
        SOLD = T.let(:sold, OctNov::PetFindByStatusParams::Status::TaggedSymbol)

        sig do
          override.returns(
            T::Array[OctNov::PetFindByStatusParams::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
