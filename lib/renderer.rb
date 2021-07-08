# frozen_string_literal: true

module Renderer
  def render(objects, options = {})
    raise ArgumentError, 'The "with" argument is required.' unless options.key?(:with)

    entity = options[:with]
    meta = options[:meta]
    fields = Fields.symbolize(options[:fields])

    { data: entity.represent(objects, only: fields) }.tap do |response|
      response[:meta] = meta unless meta.blank?
    end
  end
end
