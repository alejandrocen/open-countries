# frozen_string_literal: true

class Language
  include Mongoid::Document
  include Mongoid::Timestamps

  field :iso639_code1, type: String
  field :iso639_code2, type: String
  field :name, type: String
  field :native_name, type: String

  embedded_in :country
end
