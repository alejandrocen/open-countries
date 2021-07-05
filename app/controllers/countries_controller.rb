# frozen_string_literal: true

class CountriesController < Grape::API
  helpers CountryRepository

  resource :countries do
    params do
      optional :filter, type: Hash, default: {}
      optional :limit, type: Integer, default: 20
      optional :offset, type: Integer, default: 0
    end
    get do
      query_builder = Query::MongoBuilder.new(params: params)
      countries = repository.search(query_builder)
      render json: CountryEntity.represent(countries)
    end

    params do
      requires :id, type: String
    end
    route_param :id do
      get do
        country = repository.find(params[:id])
        render json: CountryEntity.represent(country)
      end
    end
  end
end
