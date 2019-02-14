class SessionsController < ApplicationController

  # Creating a new session
  def new
    # This is the login page
    @current_user
    render :new
  end

  def create
    # This is how to make sure we logged in
    # byebug
    flash[:error] = nil
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
     redirect_to "/users/#{user.id}"
    else
      flash[:error] = "INVALID LOGIN"
      render :new
    end
  end

    # Deleting A Session
  def destroy
    session.delete :user_id
    redirect_to '/application/new'
  end






end
