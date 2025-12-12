# typed: strong

module OctNov
  module Models
    class UserCreateWithListParams < OctNov::Internal::Type::BaseModel
      extend OctNov::Internal::Type::RequestParameters::Converter
      include OctNov::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(OctNov::UserCreateWithListParams, OctNov::Internal::AnyHash)
        end

      sig { returns(T.nilable(T::Array[OctNov::User])) }
      attr_reader :items

      sig { params(items: T::Array[OctNov::User::OrHash]).void }
      attr_writer :items

      sig do
        params(
          items: T::Array[OctNov::User::OrHash],
          request_options: OctNov::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(items: nil, request_options: {})
      end

      sig do
        override.returns(
          {
            items: T::Array[OctNov::User],
            request_options: OctNov::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
