class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def home
    unless current_user
      redirect_to new_session_path
    end
  end
  
  def current_user
    session[:name]
  end

  def is_logged_on?
    if !current_user
      redirect_to new_session_path
    end
  end

end
