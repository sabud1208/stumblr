class UsersController < ApplicationController

  def index

  end


  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      redirect_to user_path(@user)
    else
      render :'users/new'
    end
end

def edit
  @user= User.find(params[:id])
  render :edit
end

def update
  user = User.find(params[:id])
  user.update(user_params)
  redirect_to user_path(user)
end
  def destroy
    @user = User.find(params[:id]).delete
    redirect_to 'sessions/new'
  end


  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :bio)
  end
end
