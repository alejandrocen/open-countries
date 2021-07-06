# frozen_string_literal: true

class CountryMongoRepository
  def find(id)
    Country.find(id)
  end

  def search(query)
    Country
      .where(query.criteria)
      .offset(query.offset)
      .limit(query.limit)
  end

  def all
    Country.all
  end
end
