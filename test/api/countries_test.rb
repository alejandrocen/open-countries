# frozen_string_literal: true

require_relative '../test_helper'

class APICountriesTest < APITest
  def test_get_countries
    create_list(:country, 4)
    get '/api/countries'
    countries = JSON.parse(last_response.body).dig('data', 'countries')

    assert_equal(countries.count, 4)
  end

  def test_get_country
    country_id = create(:country).id
    get "/api/countries/#{country_id}"

    assert_equal(last_response.status, 200)
  end
end
