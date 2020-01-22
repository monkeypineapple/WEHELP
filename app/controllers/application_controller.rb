class ApplicationController < ActionController::Base
    helper_method :current_user
    def logged_in?
      !!current_user
    end
  
    def current_user
      @current_user ||= User.find_by(id: session[:user_id])
    end
  
    def authorized
      redirect_to home_path if !logged_in?
    end
end
