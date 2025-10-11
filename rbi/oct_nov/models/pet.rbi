# typed: strong

module OctNov
  module Models
    class Pet < OctNov::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(OctNov::Pet, OctNov::Internal::AnyHash) }

      sig { returns(String) }
      attr_accessor :name

      sig { returns(T::Array[String]) }
      attr_accessor :photo_urls

      sig { returns(T.nilable(Integer)) }
      attr_reader :id

      sig { params(id: Integer).void }
      attr_writer :id

      sig { returns(T.nilable(OctNov::Category)) }
      attr_reader :category

      sig { params(category: OctNov::Category::OrHash).void }
      attr_writer :category

      # pet status in the store
      sig { returns(T.nilable(OctNov::Pet::Status::TaggedSymbol)) }
      attr_reader :status

      sig { params(status: OctNov::Pet::Status::OrSymbol).void }
      attr_writer :status

      sig { returns(T.nilable(T::Array[OctNov::Pet::Tag])) }
      attr_reader :tags

      sig { params(tags: T::Array[OctNov::Pet::Tag::OrHash]).void }
      attr_writer :tags

      sig do
        params(
          name: String,
          photo_urls: T::Array[String],
          id: Integer,
          category: OctNov::Category::OrHash,
          status: OctNov::Pet::Status::OrSymbol,
          tags: T::Array[OctNov::Pet::Tag::OrHash]
        ).returns(T.attached_class)
      end
      def self.new(
        name:,
        photo_urls:,
        id: nil,
        category: nil,
        # pet status in the store
        status: nil,
        tags: nil
      )
      end

      sig do
        override.returns(
          {
            name: String,
            photo_urls: T::Array[String],
            id: Integer,
            category: OctNov::Category,
            status: OctNov::Pet::Status::TaggedSymbol,
            tags: T::Array[OctNov::Pet::Tag]
          }
        )
      end
      def to_hash
      end

      # pet status in the store
      module Status
        extend OctNov::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, OctNov::Pet::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AVAILABLE = T.let(:available, OctNov::Pet::Status::TaggedSymbol)
        PENDING = T.let(:pending, OctNov::Pet::Status::TaggedSymbol)
        SOLD = T.let(:sold, OctNov::Pet::Status::TaggedSymbol)

        sig { override.returns(T::Array[OctNov::Pet::Status::TaggedSymbol]) }
        def self.values
        end
      end

      class Tag < OctNov::Internal::Type::BaseModel
        OrHash =
          T.type_alias { T.any(OctNov::Pet::Tag, OctNov::Internal::AnyHash) }

        sig { returns(T.nilable(Integer)) }
        attr_reader :id

        sig { params(id: Integer).void }
        attr_writer :id

        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        sig { params(id: Integer, name: String).returns(T.attached_class) }
        def self.new(id: nil, name: nil)
        end

        sig { override.returns({ id: Integer, name: String }) }
        def to_hash
        end
      end
    end
  end
end
