# frozen_string_literal: true

require_relative "../test_helper"

class OctNov::Test::Resources::PetsTest < OctNov::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response = @oct_nov.pets.create(name: "doggie", photo_urls: ["string"])

    assert_pattern do
      response => OctNov::Pet
    end

    assert_pattern do
      response => {
        name: String,
        photo_urls: ^(OctNov::Internal::Type::ArrayOf[String]),
        id: Integer | nil,
        category: OctNov::Category | nil,
        status: OctNov::Pet::Status | nil,
        tags: ^(OctNov::Internal::Type::ArrayOf[OctNov::Pet::Tag]) | nil
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @oct_nov.pets.retrieve(0)

    assert_pattern do
      response => OctNov::Pet
    end

    assert_pattern do
      response => {
        name: String,
        photo_urls: ^(OctNov::Internal::Type::ArrayOf[String]),
        id: Integer | nil,
        category: OctNov::Category | nil,
        status: OctNov::Pet::Status | nil,
        tags: ^(OctNov::Internal::Type::ArrayOf[OctNov::Pet::Tag]) | nil
      }
    end
  end

  def test_update_required_params
    skip("Prism tests are disabled")

    response = @oct_nov.pets.update(name: "doggie", photo_urls: ["string"])

    assert_pattern do
      response => OctNov::Pet
    end

    assert_pattern do
      response => {
        name: String,
        photo_urls: ^(OctNov::Internal::Type::ArrayOf[String]),
        id: Integer | nil,
        category: OctNov::Category | nil,
        status: OctNov::Pet::Status | nil,
        tags: ^(OctNov::Internal::Type::ArrayOf[OctNov::Pet::Tag]) | nil
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @oct_nov.pets.delete(0)

    assert_pattern do
      response => nil
    end
  end

  def test_find_by_status
    skip("Prism tests are disabled")

    response = @oct_nov.pets.find_by_status

    assert_pattern do
      response => ^(OctNov::Internal::Type::ArrayOf[OctNov::Pet])
    end
  end

  def test_find_by_tags
    skip("Prism tests are disabled")

    response = @oct_nov.pets.find_by_tags

    assert_pattern do
      response => ^(OctNov::Internal::Type::ArrayOf[OctNov::Pet])
    end
  end

  def test_update_by_id
    skip("Prism tests are disabled")

    response = @oct_nov.pets.update_by_id(0)

    assert_pattern do
      response => nil
    end
  end

  def test_upload_image_required_params
    skip("Prism tests are disabled")

    response = @oct_nov.pets.upload_image(0, image: Pathname(__FILE__))

    assert_pattern do
      response => OctNov::Models::PetUploadImageResponse
    end

    assert_pattern do
      response => {
        code: Integer | nil,
        message: String | nil,
        type: String | nil
      }
    end
  end
end
