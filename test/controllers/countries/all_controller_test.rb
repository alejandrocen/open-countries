# frozen_string_literal: true

require_relative '../../test_helper'

module Countries
  class AllControllerTest < ControllerTest
    def test_get_all_countries
      create_list(:country, 30)
      get '/api/countries/all'
      countries = JSON.parse(last_response.body).dig('data', 'countries')

      assert_equal(countries.count, Country.count)
    end

    def test_get_all_countries_with_sort
      create_list(:country, 30)
      get '/api/countries/all', sort: '-alpha2_code', fields: 'alpha2_code'
      countries = JSON.parse(last_response.body).dig('data', 'countries')
      alpha2_codes = countries.pluck('alpha2_code')

      assert_equal(Country.order(alpha2_code: :desc).pluck(:alpha2_code), alpha2_codes)
    end
  end
end
