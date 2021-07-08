class ApplicationController < ActionController::Base
    before_action :set_action_cable_identifier
    before_action :configure_permitted_parameters, if: :devise_controller?

    private

    attr_accessor :username

    def set_action_cable_identifier
        cookies.encrypted[:author_id] = current_author&.id
    end
    
    protected

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:username, :email, :password, :password_confirmation, :remember_me) }
        devise_parameter_sanitizer.permit(:sign_in) { |u| u.permit(:login, :username, :email, :password, :remember_me) }
        devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:username, :email, :password, :password_confirmation, :current_password) }
     end 

end
