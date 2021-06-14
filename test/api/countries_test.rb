# frozen_string_literal: true

require_relative '../test_helper'

class APICountriesTest < APITest
  def test_get_all_countries
    create_list(:country, 4)
    get '/api/countries'

    assert_equal(last_response.status, 200)
  end
end
