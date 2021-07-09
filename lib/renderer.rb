# frozen_string_literal: true

module Renderer
  def render(objects, options = {})
    raise ArgumentError, 'Argument "with" is required.' unless options.key?(:with)

    meta = options[:meta]
    entity = options[:with]
    fields = Fields.symbolize(options[:fields])

    { data: entity.represent(objects, only: fields) }.tap do |response|
      response[:meta] = meta unless meta.blank?
    end
  end
end
