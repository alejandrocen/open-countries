# frozen_string_literal: true

source 'https://rubygems.org'

git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.3'

gem 'grape', '~> 1.5'
gem 'mongoid', '~> 7.3'
gem 'rake', '~> 13.0'

group :development do
  gem 'rubocop', '~> 1.16'
end

group :test do
  gem 'database_cleaner-mongoid', '~> 2.0'
  gem 'factory_bot', '~> 6.2'
  gem 'minitest', '~> 5.14'
  gem 'rack-test', '~> 1.1'
end

group :development, :test do
  gem 'byebug', '~> 11.1'
end
