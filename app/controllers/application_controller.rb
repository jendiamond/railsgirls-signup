class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_member, :logged_in?

  def after_sign_up_path_for(resource)
    new_user_path(resource)
  end

  #def after_sign_in_path_for(resource)
  #   user_path(resource)
  # end

  def current_member
    @current_member ||= Member.find(session[:member_id]) if session[:member_id]
  end

  def logged_in?
    !!current_member
  end

  def require_user
    if !logged_in?
      flash[:danger] = 'You must be logged_in to perform that action :)'
      redirect_to root_path
    end
  end
end
