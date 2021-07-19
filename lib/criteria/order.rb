# frozen_string_literal: true

module Criteria
  class Order
    attr_accessor :sort

    def initialize(sort)
      @sort = sort
    end

    def to_h
      sort_array.each_with_object({}) do |value, order|
        sort = Sort.new(value)
        order[sort.key] = sort.direction
      end
    end

    private

    def sort_array
      @sort.split(',')
    end
  end
end
