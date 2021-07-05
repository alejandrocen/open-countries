# frozen_string_literal: true

module CountryRepository
  def repository
    @repository ||= CountryMongoRepository.new
  end
end
