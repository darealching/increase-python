# frozen_string_literal: true

module OctNov
  module Models
    # @see OctNov::Resources::Pets#upload_image
    class PetUploadImageParams < OctNov::Internal::Type::BaseModel
      extend OctNov::Internal::Type::RequestParameters::Converter
      include OctNov::Internal::Type::RequestParameters

      # @!attribute image
      #
      #   @return [Pathname, StringIO, IO, String, OctNov::FilePart]
      required :image, OctNov::Internal::Type::FileInput

      # @!attribute additional_metadata
      #   Additional Metadata
      #
      #   @return [String, nil]
      optional :additional_metadata, String

      # @!method initialize(image:, additional_metadata: nil, request_options: {})
      #   @param image [Pathname, StringIO, IO, String, OctNov::FilePart]
      #
      #   @param additional_metadata [String] Additional Metadata
      #
      #   @param request_options [OctNov::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
