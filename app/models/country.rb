# frozen_string_literal: true

class Country
  include Mongoid::Document

  field :name, type: String
  field :domains, type: Array, default: []
  field :alpha2_code, type: String
  field :alpha3_code, type: String
  field :calling_codes, type: Array, default: []
  field :capital, type: String
  field :alt_spellings, type: Array, default: []
  field :region, type: String
  field :subregion, type: String
  field :population, type: Integer
  field :latlng, type: Array, default: []
  field :demonym, type: String
  field :area, type: Integer
  field :gini, type: Float
  field :timezones, type: Array, default: []
  field :borders, type: Array, default: []
  field :native_name, type: String
  field :numeric_code, type: String
  field :translations, type: Hash, default: {}
  field :cioc, type: String

  embeds_many :currencies
  embeds_many :languages
  embeds_many :regional_blocs
end
