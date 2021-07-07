# frozen_string_literal: true

class CountryMongoRepository
  def find(id)
    Country.find(id)
  end

  def search(query)
    Country
      .where(query.criteria)
      .order(query.order)
      .offset(query.offset)
      .limit(query.limit)
  end

  def all(query)
    Country.order(query.order)
  end
end
