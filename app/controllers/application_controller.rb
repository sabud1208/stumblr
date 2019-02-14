class ApplicationController < ActionController::Base
  helper_method :logged_in

  def current_user
    if session[:user_id]
      @current_user = User.find(session[:user_id])
    :'/styles'
    end
  end

  def logged_in?
    !!current_user
  end

  def authorized
    redirect_to new_session_path unless logged_in?
  end

  def index
    @current_user = current_user
    @post = Post.new
  end


end
