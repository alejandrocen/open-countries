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
  end
end
