# frozen_string_literal: true

DIRS = %w[app/models app/entities app/controllers app/repositories lib].freeze

Bundler.require(:default, ENV['RACK_ENV'])
Mongoid.load!('config/mongoid.yml')

loader = Zeitwerk::Loader.new
DIRS.each { |dir| loader.push_dir(dir) }
loader.setup
