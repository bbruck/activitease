class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :initialize_message

  def initialize_message
    @message = Message.new
  end

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:nickname])
  end
end
