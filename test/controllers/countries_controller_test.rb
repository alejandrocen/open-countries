# frozen_string_literal: true

require_relative '../test_helper'

class CountriesControllerTest < ControllerTest
  def test_get_countries_with_pagination
    create_list(:country, 10)
    get '/api/countries', offset: 0, limit: 5
    countries = JSON.parse(last_response.body).dig('data', 'countries')

    assert_equal(countries.count, 5)
  end

  def test_get_countries_with_sort
    create_list(:country, 5)
    get '/api/countries', sort: '-alpha2_code'
    countries = JSON.parse(last_response.body).dig('data', 'countries')
    alpha2_codes = countries.pluck('alpha2_code')

    assert_equal(Country.order(alpha2_code: :desc).pluck(:alpha2_code), alpha2_codes)
  end

  def test_get_countries_with_query
    create(:country, name: 'Mexico', alpha2_code: 'MX')
    create(:country, name: 'Argentina', alpha2_code: 'AR')

    get '/api/countries', fields: 'name,alpha2_code', q: 'MX'
    countries = JSON.parse(last_response.body).dig('data', 'countries')

    assert_equal(countries.pluck('name', 'alpha2_code').to_h, { 'Mexico' => 'MX' })
  end

  def test_get_country
    country_id = create(:country).id
    get "/api/countries/#{country_id}", fields: 'alpha2_code,currencies'
    country = JSON.parse(last_response.body).dig('data', 'country')

    assert_equal(country.keys, %w[id alpha2_code currencies])
  end
end
