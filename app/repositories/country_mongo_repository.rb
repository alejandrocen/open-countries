# frozen_string_literal: true

class CountryMongoRepository
  def find(id)
    Country.find(id)
  end

  def search(criteria_builder)
    Country
      .order(criteria_builder.order)
      .offset(criteria_builder.offset)
      .limit(criteria_builder.limit)
  end

  def all(criteria_builder)
    Country.order(criteria_builder.order)
  end
end
