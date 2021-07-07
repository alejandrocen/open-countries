# frozen_string_literal: true

module Query
  class MongoBuilder
    attr_accessor :filter, :limit, :offset, :sort

    def initialize(params: {})
      @filter = params[:filter]
      @limit = params[:limit]
      @offset = params[:offset]
      @sort = params[:sort]
    end

    def criteria
      @filter
    end

    def order
      sort_array.each_with_object({}) do |sort, order|
        sorter = Sorter.new(sort)
        order[sorter.key] = sorter.direction
      end
    end

    private

    def sort_array
      @sort.split(',')
    end
  end
end
