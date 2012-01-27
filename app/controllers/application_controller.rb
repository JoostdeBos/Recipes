class ApplicationController < ActionController::Base
include ControllerAuthentication
  protect_from_forgery
  helper_method :current_user

  def authenticate
    redirect_to signin_path unless current_user
  end

	private

	def current_user
	  @current_user ||= User.find(session[:user_id]) if session[:user_id]
	end

	def image_url(source)
    abs_path = image_path(source)
    unless abs_path =~ /^http/
      abs_path = "#{request.protocol}#{request.host_with_port}#{abs_path}"
    end
   abs_path
  end

end
