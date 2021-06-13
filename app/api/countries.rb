# frozen_string_literal: true

require_relative '../models/country'

module API
  class Countries < Grape::API
    resource :countries do
      get do
        Country.all
      end
    end
  end
end
