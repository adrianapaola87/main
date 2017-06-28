
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  #before_action :authenticate_user!

   def after_sign_in_path_for(resource)
     if admin_user_signed_in?
      admin_root_path
    elsif user_signed_in?       
       settings_path
  end 
   end

end
