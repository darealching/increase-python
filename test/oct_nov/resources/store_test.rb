# frozen_string_literal: true

require_relative "../test_helper"

class OctNov::Test::Resources::StoreTest < OctNov::Test::ResourceTest
  def test_list_inventory
    skip("Prism tests are disabled")

    response = @oct_nov.store.list_inventory

    assert_pattern do
      response => ^(OctNov::Internal::Type::HashOf[Integer])
    end
  end
end
