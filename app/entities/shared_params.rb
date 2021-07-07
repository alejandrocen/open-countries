# frozen_string_literal: true

module SharedParams
  extend Grape::API::Helpers

  params :pagination do |options|
    optional :limit, type: Integer, default: options[:default_limit] || 25
    optional :offset, type: Integer, default: options[:default_offset] || 0
  end

  params :sort do |options|
    optional :sort, type: String, default: options[:default_sort] || 'created_at'
  end

  params :filter do |options|
    optional :filter, type: Hash, default: options[:default_filter] || {}
  end

  params :fields do |options|
    optional :fields, type: String, default: options[:default_fields]
  end

  params :show do
    requires :id, type: String
  end
end
