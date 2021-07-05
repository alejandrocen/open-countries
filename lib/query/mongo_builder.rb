# frozen_string_literal: true

module Query
  class MongoBuilder
    attr_accessor :filter, :limit, :offset

    def initialize(params: {})
      @filter = params[:filter]
      @limit = params[:limit]
      @offset = params[:offset]
    end

    def criteria
      @filter
    end
  end
end
