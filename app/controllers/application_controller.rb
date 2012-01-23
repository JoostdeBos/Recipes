class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_user

	private

	def current_user
	  @current_user ||= User.find(session[:user_id]) if session[:user_id] unless User.count == 0 # Unless should probably be removed as this never happens when there are users, this is only useful in production
	end
end
