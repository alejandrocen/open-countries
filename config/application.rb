# frozen_string_literal: true

require_relative 'boot'

Bundler.require(:default, ENV['RACK_ENV'])

Mongoid.load!('config/mongoid.yml')

require_relative '../app/core'

module API
  class Application < Grape::API
    format :json
    prefix :api

    mount API::Countries
  end
end
