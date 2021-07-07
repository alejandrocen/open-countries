# frozen_string_literal: true

class CountriesController < Grape::API
  helpers CountryRepository
  mount Countries::AllController

  resource :countries do
    params do
      optional :filter, type: Hash, default: {}
      optional :limit, type: Integer, default: 20
      optional :offset, type: Integer, default: 0
      optional :sort, type: String, default: 'alpha2_code'
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
