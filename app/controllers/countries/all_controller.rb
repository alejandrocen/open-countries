# frozen_string_literal: true

module Countries
  class AllController < Grape::API
    helpers CountryRepository, SharedParams

    resource :countries do
      params do
        use :fields
        use :sort, default_sort: 'alpha2_code'
      end
      get :all do
        query_builder = Query::MongoBuilder.from_params(params)
        countries = repository.all(query_builder)
        render json: CountryEntity.represent(countries, only: Fields.symbolize(params[:fields]))
      end
    end
  end
end
