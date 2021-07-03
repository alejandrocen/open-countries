# frozen_string_literal: true

module API
  class LanguageEntity < ApplicationEntity
    root 'languages', 'language'

    expose :iso639_code1
    expose :iso639_code2
    expose :name
    expose :native_name
    expose :created_at
    expose :updated_at
  end
end
