class PostsController < ApplicationController
  before_action :authorized, except: [:new, :create]

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
    @user = User.find(params["post"]["user_id"])
    redirect_to user_path(@user)
  end

  private
  def post_params
    params.require(:post).permit(:description, :image, :user_id)
  end

end
