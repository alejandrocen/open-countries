# frozen_string_literal: true

module Fields
  module_function

  def symbolize(string)
    fields = string.to_s.split(',')
    return if fields.blank?

    fields.map(&:to_sym) | %i[id]
  end
end
