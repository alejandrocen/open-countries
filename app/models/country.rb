# frozen_string_literal: true

class Country
  include Mongoid::Document

  field :name, type: String
end
