# frozen_string_literal: true

module Countries
  class AllController < ApiController
    helpers CountryRepository, SharedParams

    resource :countries do
      params do
        use :fields
        use :sort, default_sort: 'alpha2_code'
      end
      get :all do
        criteria_builder = Criteria::MongoBuilder.from_params(params)
        countries = repository.all(criteria_builder)
        render countries, with: CountryEntity, fields: params[:fields]
      end
    end
  end
end
