# frozen_string_literal: true

module API
  class RegionalBlocEntity < ApplicationEntity
    root 'regional_blocs', 'regional_bloc'

    expose :acronym
    expose :name
    expose :other_acronyms
    expose :other_names
    expose :created_at
    expose :updated_at
  end
end
