# frozen_string_literal: true

class RegionalBloc
  include Mongoid::Document

  field :acronym, type: String
  field :name, type: String
  field :other_acronyms, type: Array, default: []
  field :other_names, type: Array, default: []

  embedded_in :country
end
