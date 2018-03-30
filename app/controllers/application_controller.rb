# Devise application controller replaces user controller
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # # Anytime a user is updated/changed, sanitize the devise parameters
  # before_action :sanitize_devise_parameters, if: :devise_controller?
  #
  # def sanitize_devise_parameters
  #   # permit user to create an address on sign_up (if needed in the future)
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:phone_number, :address])
  # end

  # devise helper to redirect after sign up
  def after_sign_in_path_for(_resource)
    event_path(:id)
  end
end
