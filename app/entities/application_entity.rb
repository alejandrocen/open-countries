# frozen_string_literal: true

class ApplicationEntity < Grape::Entity
  format_with :uuid, &:to_s

  expose :id, format_with: :uuid
end
