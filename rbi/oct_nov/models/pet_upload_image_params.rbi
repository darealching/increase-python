# typed: strong

module OctNov
  module Models
    class PetUploadImageParams < OctNov::Internal::Type::BaseModel
      extend OctNov::Internal::Type::RequestParameters::Converter
      include OctNov::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(OctNov::PetUploadImageParams, OctNov::Internal::AnyHash)
        end

      sig { returns(OctNov::Internal::FileInput) }
      attr_accessor :image

      # Additional Metadata
      sig { returns(T.nilable(String)) }
      attr_reader :additional_metadata

      sig { params(additional_metadata: String).void }
      attr_writer :additional_metadata

      sig do
        params(
          image: OctNov::Internal::FileInput,
          additional_metadata: String,
          request_options: OctNov::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        image:,
        # Additional Metadata
        additional_metadata: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            image: OctNov::Internal::FileInput,
            additional_metadata: String,
            request_options: OctNov::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
