# frozen_string_literal: true

require_relative 'boot'

Bundler.require(:default, ENV['RACK_ENV'])

module API
  class Application < Grape::API
  end
end
