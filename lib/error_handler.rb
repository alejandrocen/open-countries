# frozen_string_literal: true

module ErrorHandler
  def validation_error!(exception)
    error!(exception.message, 400)
  end

  def not_found!
    error!('Resource not found', 404)
  end

  def server_error!
    error!('Internal server error')
  end
end
