# frozen_string_literal: true

module EntityHelper
  extend Grape::API::Helpers

  Grape::Entity.format_with :uuid, &:to_s
end
