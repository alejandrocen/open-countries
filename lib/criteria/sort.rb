# frozen_string_literal: true

module Criteria
  class Sort
    attr_accessor :sort

    DESC_SYMBOL = '-'

    def initialize(sort)
      @sort = sort
    end

    def key
      direction == Mongo::Index::DESCENDING ? @sort.delete_prefix(DESC_SYMBOL) : @sort
    end

    def direction
      @sort.first == DESC_SYMBOL ? Mongo::Index::DESCENDING : Mongo::Index::ASCENDING
    end
  end
end
