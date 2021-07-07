# frozen_string_literal: true

require_relative 'boot'
require_relative 'setup'

module API
  class Application < ApiController
    format :json
    prefix :api
    helpers ErrorHandler, Renderer
    rescue_from Grape::Exceptions::ValidationErrors, with: ->(e) { validation_error!(e) }
    rescue_from Mongoid::Errors::DocumentNotFound, with: :not_found!
    rescue_from :all, with: :server_error!

    mount CountriesController
  end
end
