# frozen_string_literal: true

require_relative "../../test_helper"

class OctNov::Test::Resources::Store::OrdersTest < OctNov::Test::ResourceTest
  def test_create
    skip("Prism tests are disabled")

    response = @oct_nov.store.orders.create

    assert_pattern do
      response => OctNov::Order
    end

    assert_pattern do
      response => {
        id: Integer | nil,
        complete: OctNov::Internal::Type::Boolean | nil,
        pet_id: Integer | nil,
        quantity: Integer | nil,
        ship_date: Time | nil,
        status: OctNov::Order::Status | nil
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @oct_nov.store.orders.retrieve(0)

    assert_pattern do
      response => OctNov::Order
    end

    assert_pattern do
      response => {
        id: Integer | nil,
        complete: OctNov::Internal::Type::Boolean | nil,
        pet_id: Integer | nil,
        quantity: Integer | nil,
        ship_date: Time | nil,
        status: OctNov::Order::Status | nil
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @oct_nov.store.orders.delete(0)

    assert_pattern do
      response => nil
    end
  end
end
