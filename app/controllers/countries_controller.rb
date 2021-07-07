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
      query_builder = Query::MongoBuilder.from_params(params)
      countries = repository.search(query_builder)
      render json: CountryEntity.represent(countries, only: Fields.symbolize(params[:fields]))
    end

    params do
      use :id, :fields
    end
    route_param :id do
      get do
        country = repository.find(params[:id])
        render json: CountryEntity.represent(country, only: Fields.symbolize(params[:fields]))
      end
    end
  end
end
