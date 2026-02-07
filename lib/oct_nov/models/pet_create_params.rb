# frozen_string_literal: true

module OctNov
  module Models
    # @see OctNov::Resources::Pets#create
    class PetCreateParams < OctNov::Models::Pet
      extend OctNov::Internal::Type::RequestParameters::Converter
      include OctNov::Internal::Type::RequestParameters

      # @!method initialize(request_options: {})
      #   @param request_options [OctNov::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
