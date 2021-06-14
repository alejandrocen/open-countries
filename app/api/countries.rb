# frozen_string_literal: true

module API
  class Countries < Grape::API
    resource :countries do
      get do
        Country.all
      end
    end
  end
end
