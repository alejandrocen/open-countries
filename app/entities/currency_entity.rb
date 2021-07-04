# frozen_string_literal: true

class CurrencyEntity < ApplicationEntity
  root 'currencies', 'currency'

  expose :code
  expose :name
  expose :symbol
  expose :created_at
  expose :updated_at
end
