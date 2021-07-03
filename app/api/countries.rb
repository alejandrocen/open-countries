# frozen_string_literal: true

module API
  class Countries < Grape::API
    resource :countries do
      params do
        optional :limit, type: Integer, default: 20
        optional :offset, type: Integer, default: 0
      end
      get do
        countries = Country.limit(params[:limit]).offset(params[:offset])
        { data: CountryEntity.represent(countries) }
      end
    end
  end
end
