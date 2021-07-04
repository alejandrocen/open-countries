# frozen_string_literal: true

require_relative 'boot'

Bundler.require(:default, ENV['RACK_ENV'])
Mongoid.load!('config/mongoid.yml')

require_relative '../app/core'

module API
  class Application < Grape::API
    format :json
    prefix :api
    helpers ErrorHandler, RenderHelper
    rescue_from Grape::Exceptions::ValidationErrors, with: ->(e) { validation_error!(e) }
    rescue_from Mongoid::Errors::DocumentNotFound, with: :not_found!
    rescue_from :all, with: :server_error!

    mount API::Countries
  end
end
