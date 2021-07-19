# frozen_string_literal: true

source 'https://rubygems.org'

git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.3'

gem 'grape', '~> 1.5'
gem 'grape-entity', '~> 0.9.0'
gem 'mongoid', '~> 7.3'
gem 'mongoid_search', '~> 0.4.0'
gem 'rack-contrib', '~> 2.3'
gem 'rack-cors', '~> 1.1'
gem 'rake', '~> 13.0'
gem 'zeitwerk', '~> 2.4'

group :development do
  gem 'rubocop', '~> 1.16'
end

group :test do
  gem 'database_cleaner-mongoid', '~> 2.0'
  gem 'factory_bot', '~> 6.2'
  gem 'faker', '~> 2.18'
  gem 'minitest', '~> 5.14'
  gem 'rack-test', '~> 1.1'
end

group :development, :test do
  gem 'byebug', '~> 11.1'
end
