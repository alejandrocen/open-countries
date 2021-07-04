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

      params do
        requires :id, type: String
      end
      route_param :id do
        get do
          country = Country.find(params[:id])
          { data: CountryEntity.represent(country) }
        end
      end
    end
  end
end
