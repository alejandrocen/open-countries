# frozen_string_literal: true

ENV['RACK_ENV'] ||= 'test'

require_relative '../config/environment'

require 'minitest/autorun'

FactoryBot.find_definitions

class APITest < Minitest::Test
  include Rack::Test::Methods
  include FactoryBot::Syntax::Methods

  def app
    API::Application
  end
end
