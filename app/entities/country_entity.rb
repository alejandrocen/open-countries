# frozen_string_literal: true

class CountryEntity < ApplicationEntity
  root 'countries', 'country'

  expose :name
  expose :domains
  expose :alpha2_code
  expose :alpha3_code
  expose :calling_codes
  expose :capital
  expose :alt_spellings
  expose :region
  expose :subregion
  expose :population
  expose :latlng
  expose :demonym
  expose :area
  expose :gini
  expose :timezones
  expose :borders
  expose :native_name
  expose :numeric_code
  expose :translations
  expose :cioc
  expose :created_at
  expose :updated_at

  expose :currencies, using: CurrencyEntity
  expose :languages, using: LanguageEntity
  expose :regional_blocs, using: RegionalBlocEntity
end
