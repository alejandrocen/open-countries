# frozen_string_literal: true

class CountriesController < ApiController
  helpers CountryRepository, SharedParams
  mount Countries::AllController

  resource :countries do
    params do
      use :filter, :fields, :pagination
      use :sort, default_sort: 'alpha2_code'
    end
    get do
      criteria_builder = Criteria::MongoBuilder.from_params(params)
      countries = repository.search(criteria_builder)
      render countries, with: CountryEntity, fields: params[:fields]
    end

    params do
      use :id, :fields
    end
    route_param :id do
      get do
        country = repository.find(params[:id])
        render country, with: CountryEntity, fields: params[:fields]
      end
    end
  end
end
