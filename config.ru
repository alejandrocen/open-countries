# frozen_string_literal: true

require_relative 'config/environment'

use Rack::Cors do
  allow do
    origins '*'
    resource '/api/*', headers: :any, methods: :get
  end
end

use Rack::Deflater
use Rack::Deflect

run API::Application
