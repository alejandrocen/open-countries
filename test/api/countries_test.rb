# frozen_string_literal: true

require_relative '../test_helper'

class APICountriesTest < APITest
  def test_get_all_countries
    create_list(:country, 4)
    get '/api/countries'
    json_response = JSON.parse(last_response.body)

    assert_equal(json_response['data']['countries'].count, 4)
  end
end
