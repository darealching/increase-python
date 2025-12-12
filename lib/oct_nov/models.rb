# frozen_string_literal: true

module OctNov
  [OctNov::Internal::Type::BaseModel, *OctNov::Internal::Type::BaseModel.subclasses].each do |cls|
    cls.define_sorbet_constant!(:OrHash) { T.type_alias { T.any(cls, OctNov::Internal::AnyHash) } }
  end

  OctNov::Internal::Util.walk_namespaces(OctNov::Models).each do |mod|
    case mod
    in OctNov::Internal::Type::Enum | OctNov::Internal::Type::Union
      mod.constants.each do |name|
        case mod.const_get(name)
        in true | false
          mod.define_sorbet_constant!(:TaggedBoolean) { T.type_alias { T::Boolean } }
          mod.define_sorbet_constant!(:OrBoolean) { T.type_alias { T::Boolean } }
        in Integer
          mod.define_sorbet_constant!(:TaggedInteger) { T.type_alias { Integer } }
          mod.define_sorbet_constant!(:OrInteger) { T.type_alias { Integer } }
        in Float
          mod.define_sorbet_constant!(:TaggedFloat) { T.type_alias { Float } }
          mod.define_sorbet_constant!(:OrFloat) { T.type_alias { Float } }
        in Symbol
          mod.define_sorbet_constant!(:TaggedSymbol) { T.type_alias { Symbol } }
          mod.define_sorbet_constant!(:OrSymbol) { T.type_alias { T.any(Symbol, String) } }
        else
        end
      end
    else
    end
  end

  OctNov::Internal::Util.walk_namespaces(OctNov::Models)
                        .lazy
                        .grep(OctNov::Internal::Type::Union)
                        .each do |mod|
    const = :Variants
    next if mod.sorbet_constant_defined?(const)

    mod.define_sorbet_constant!(const) { T.type_alias { mod.to_sorbet_type } }
  end

  Category = OctNov::Models::Category

  Order = OctNov::Models::Order

  Pet = OctNov::Models::Pet

  PetCreateParams = OctNov::Models::PetCreateParams

  PetDeleteParams = OctNov::Models::PetDeleteParams

  PetFindByStatusParams = OctNov::Models::PetFindByStatusParams

  PetFindByTagsParams = OctNov::Models::PetFindByTagsParams

  PetRetrieveParams = OctNov::Models::PetRetrieveParams

  PetUpdateByIDParams = OctNov::Models::PetUpdateByIDParams

  PetUpdateParams = OctNov::Models::PetUpdateParams

  PetUploadImageParams = OctNov::Models::PetUploadImageParams

  Store = OctNov::Models::Store

  StoreListInventoryParams = OctNov::Models::StoreListInventoryParams

  User = OctNov::Models::User

  UserCreateParams = OctNov::Models::UserCreateParams

  UserCreateWithListParams = OctNov::Models::UserCreateWithListParams

  UserDeleteParams = OctNov::Models::UserDeleteParams

  UserLoginParams = OctNov::Models::UserLoginParams

  UserLogoutParams = OctNov::Models::UserLogoutParams

  UserRetrieveParams = OctNov::Models::UserRetrieveParams

  UserUpdateParams = OctNov::Models::UserUpdateParams
end
