class ApplicationController < ActionController::Base
  # White list
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:full_name, :date_of_birth, state_attributes: [:state_id]])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:full_name, :date_of_birth, state_attributes: [:state_id]])
  end
end
