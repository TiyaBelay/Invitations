class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

    # # Anytime a user is updated/changed, sanitize the devise parameters
  # before_action :sanitize_devise_parameters, if: :devise_controller?
  #
  # def sanitize_devise_parameters
  #   # permit user to create an address on sign_up (if needed in the future)
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:phone_number, :address])
  # end
end
