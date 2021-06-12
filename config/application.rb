# frozen_string_literal: true

require_relative 'boot'

Bundler.require(:default, ENV['RACK_ENV'])

require_relative '../api/core'

module API
  class Application < Grape::API
    format :json
    prefix :api

    mount API::Countries
  end
end
