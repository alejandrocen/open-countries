# frozen_string_literal: true

module API
  class ApplicationEntity < Grape::Entity
    expose :id, format_with: :uuid
  end
end
