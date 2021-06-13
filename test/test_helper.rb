# frozen_string_literal: true

ENV['RACK_ENV'] ||= 'test'

require_relative '../config/environment'

require 'byebug'
require 'rack/test'
require 'minitest/autorun'

class APITest < Minitest::Test
  include Rack::Test::Methods

  def app
    API::Application
  end
end
