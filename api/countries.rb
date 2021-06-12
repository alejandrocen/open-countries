# frozen_string_literal: true

module API
  class Countries < Grape::API
    resource :countries do
      get do
        status 200
      end
    end
  end
end
