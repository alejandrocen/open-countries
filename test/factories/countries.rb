# frozen_string_literal: true

FactoryBot.define do
  factory :country do
    name { Faker::Address.country }
    domains { [".#{Faker::Internet.domain_suffix}"] }
    alpha2_code { Faker::Address.country_code }
    alpha3_code { Faker::Address.country_code_long }
  end
end
