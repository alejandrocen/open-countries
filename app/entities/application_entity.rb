# frozen_string_literal: true

class ApplicationEntity < Grape::Entity
  expose :id, format_with: :uuid
end
