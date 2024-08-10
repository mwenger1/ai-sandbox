class ApplicationController < ActionController::Base
  private

  def authenticate
    authenticate_or_request_with_http_basic do |username, password|
      # Replace these with secure credentials, preferably stored in environment variables
      ActiveSupport::SecurityUtils.secure_compare(username, 'api_user') &
      ActiveSupport::SecurityUtils.secure_compare(password, 'api_password')
    end
  end
end
