class ApplicationController < ActionController::API
  before_action :set_cors_headers

  private

  def set_cors_headers
    # Allow requests from any origin
    response.headers['Access-Control-Allow-Origin'] = '*'

    # Additional headers for allowing specific HTTP methods
    response.headers['Access-Control-Allow-Methods'] = 'GET, POST, PUT, PATCH, DELETE, OPTIONS'

    # Additional headers for allowing specific HTTP headers
    response.headers['Access-Control-Allow-Headers'] = 'Content-Type, Authorization'

    # Optional: Allow credentials (cookies, authorization headers, etc.)
    response.headers['Access-Control-Allow-Credentials'] = 'true'
  end
end
