# frozen_string_literal: true

module Countries
  class AllController < Grape::API
    resource :countries do
      get :all do
        render json: CountryEntity.represent(repository.all)
      end
    end
  end
end
