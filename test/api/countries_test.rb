# frozen_string_literal: true

require_relative '../test_helper'

class APICountriesTest < APITest
  def test_get_all_countries
    create_list(:country, 4)
    get '/api/countries'

    assert_equal(JSON.parse(last_response.body).count, 4)
  end
end
