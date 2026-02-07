# typed: strong

module OctNov
  module Models
    class PetUpdateParams < OctNov::Models::Pet
      extend OctNov::Internal::Type::RequestParameters::Converter
      include OctNov::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(OctNov::PetUpdateParams, OctNov::Internal::AnyHash)
        end

      sig do
        params(request_options: OctNov::RequestOptions::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(request_options: {})
      end

      sig { override.returns({ request_options: OctNov::RequestOptions }) }
      def to_hash
      end
    end
  end
end
