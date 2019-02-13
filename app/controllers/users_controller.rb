class UsersController < ApplicationController
  before_action :authorized, except: [:new, :create]

  def index
    @posts = Post.order(created_at: :desc)
  end


  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
    @posts = @user.posts
    
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
  end


  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :bio)
  end
end
