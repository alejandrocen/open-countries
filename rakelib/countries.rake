# frozen_string_literal: true

desc 'Import countries information'
namespace :countries do
  task import: :environment do
    CountryImporter.run!
  end
end
