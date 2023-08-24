class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :bio, :location, :github, :linkedin, :twitter, :private])
    devise_parameter_sanitizer.permit(:account_update, keys: [:receive_app_notifications, :profile_photo, :receive_email_notifications, :name, :bio, :location, :github, :linkedin, :twitter, :private])
  end
end