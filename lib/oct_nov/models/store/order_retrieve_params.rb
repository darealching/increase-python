# frozen_string_literal: true

module OctNov
  module Models
    module Store
      # @see OctNov::Resources::Store::Orders#retrieve
      class OrderRetrieveParams < OctNov::Internal::Type::BaseModel
        extend OctNov::Internal::Type::RequestParameters::Converter
        include OctNov::Internal::Type::RequestParameters

        # @!method initialize(request_options: {})
        #   @param request_options [OctNov::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
