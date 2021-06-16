# frozen_string_literal: true

module CountryImporter
  module_function

  def run!
    data = JSON.parse(File.read('lib/files/data.json'))
    Country.create!(data)
  end
end
