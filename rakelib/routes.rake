# frozen_string_literal: true

desc 'Show routes'
task routes: :environment do
  API::Application.routes.each do |route|
    puts "#{route.request_method.ljust(10)} #{route.origin}"
  end
end
