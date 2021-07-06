# frozen_string_literal: true

task :environment do
  ENV['RACK_ENV'] ||= 'development'
  require_relative '../config/environment'
end
