# frozen_string_literal: true

module Query
  class MongoBuilder
    attr_accessor :filter, :limit, :offset, :sort

    def initialize(filter: {}, limit: 20, offset: 0, sort: 'created_at')
      @filter = filter
      @limit = limit
      @offset = offset
      @sort = sort
    end

    def criteria
      @filter
    end

    def order
      sort_array.each_with_object({}) do |sort, order|
        sorter = Sort.new(sort)
        order[sorter.key] = sorter.direction
      end
    end

    def self.from_params(params = {})
      new(
        filter: params[:filter],
        limit: params[:limit],
        offset: params[:offset],
        sort: params[:sort]
      )
    end

    private

    def sort_array
      @sort.split(',')
    end
  end
end
