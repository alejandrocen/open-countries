# frozen_string_literal: true

Bundler.require(:default, ENV['RACK_ENV'])
Mongoid.load!('config/mongoid.yml')

Mongoid::Search.setup do |config|
  config.allow_empty_search = true
end

loader = Zeitwerk::Loader.new
Dir['app/*', 'lib'].each { |dir| loader.push_dir(dir) }
loader.setup
