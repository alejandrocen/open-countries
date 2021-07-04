# frozen_string_literal: true

Bundler.require(:default, ENV['RACK_ENV'])
Mongoid.load!('config/mongoid.yml')

loader = Zeitwerk::Loader.new
%w[app/models app/entities app/controllers lib].each { |dir| loader.push_dir(dir) }
loader.setup
