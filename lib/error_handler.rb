# frozen_string_literal: true

module ErrorHandler
  def grape_error!(exception)
    error!(exception.message, 400)
  end

  def not_found!(_exception)
    error!('Resource not found', 404)
  end

  def server_error!(_exception)
    error!('Internal server error')
  end
end
