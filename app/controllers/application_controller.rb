class ApplicationController < ActionController::Base
     
     protect_from_forgery with: :exception

     before_action :configure_permitted_parameters, if: :devise_controller?

     protected

          def configure_permitted_parameters
               devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:username, :roleid,:email, :password)}

               devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:username,:roleid, :email, :password, :current_password)}
          end

  def after_sign_in_path_for(resource)
  if admin_signed_in? 
    adminhomes_index_path
  elsif customer_signed_in? 	
    customerhomes_path
  end
end

def current_ability
  @current_ability ||= Ability.new(current_admin)
end

rescue_from CanCan::AccessDenied do |exception|
   sign_out :admin if admin_signed_in?
   redirect_to root_path, :alert => exception.message
  end
end
