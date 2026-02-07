# frozen_string_literal: true

require_relative "../test_helper"

class OctNov::Test::Resources::UsersTest < OctNov::Test::ResourceTest
  def test_create
    skip("Prism tests are disabled")

    response = @oct_nov.users.create

    assert_pattern do
      response => OctNov::User
    end

    assert_pattern do
      response => {
        id: Integer | nil,
        email: String | nil,
        first_name: String | nil,
        last_name: String | nil,
        password: String | nil,
        phone: String | nil,
        username: String | nil,
        user_status: Integer | nil
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @oct_nov.users.retrieve("username")

    assert_pattern do
      response => OctNov::User
    end

    assert_pattern do
      response => {
        id: Integer | nil,
        email: String | nil,
        first_name: String | nil,
        last_name: String | nil,
        password: String | nil,
        phone: String | nil,
        username: String | nil,
        user_status: Integer | nil
      }
    end
  end

  def test_update
    skip("Prism tests are disabled")

    response = @oct_nov.users.update("username")

    assert_pattern do
      response => nil
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @oct_nov.users.delete("username")

    assert_pattern do
      response => nil
    end
  end

  def test_create_with_list
    skip("Prism tests are disabled")

    response = @oct_nov.users.create_with_list

    assert_pattern do
      response => OctNov::User
    end

    assert_pattern do
      response => {
        id: Integer | nil,
        email: String | nil,
        first_name: String | nil,
        last_name: String | nil,
        password: String | nil,
        phone: String | nil,
        username: String | nil,
        user_status: Integer | nil
      }
    end
  end

  def test_login
    skip("Prism tests are disabled")

    response = @oct_nov.users.login

    assert_pattern do
      response => String
    end
  end

  def test_logout
    skip("Prism tests are disabled")

    response = @oct_nov.users.logout

    assert_pattern do
      response => nil
    end
  end
end
