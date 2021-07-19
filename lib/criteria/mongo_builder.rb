# frozen_string_literal: true

module Criteria
  class MongoBuilder
    attr_accessor :query, :limit, :offset, :sort

    def initialize(query, limit, offset, sort)
      @query = query
      @limit = limit || 20
      @offset = offset || 0
      @sort = sort
    end

    def order
      Order.new(@sort.to_s).to_h
    end

    def self.from_params(params = {})
      new(params[:q], params[:limit], params[:offset], params[:sort])
    end
  end
end
