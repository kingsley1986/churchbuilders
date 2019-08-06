class ApplicationController < ActionController::Base

  def configure_devise_params
    devise_parameter_sanitizer.permit(:sign_up) do |u|
      u.permit(:first_name, :last_name, :gender, :email, :password, :password_confirmation, :phone)
    end
  end

end
