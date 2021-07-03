# frozen_string_literal: true

class Currency
  include Mongoid::Document
  include Mongoid::Timestamps

  field :code, type: String
  field :name, type: String
  field :symbol, type: String

  embedded_in :country
end
