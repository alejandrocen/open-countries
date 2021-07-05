# frozen_string_literal: true

module Renderer
  def render(json:, meta: {})
    { data: json }.tap do |response|
      response[:meta] = meta unless meta.blank?
    end
  end
end
