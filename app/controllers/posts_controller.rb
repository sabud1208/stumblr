class PostsController < ApplicationController
  before_action :authorized
  def create
    Post.create(post_params)
    byebug
    redirect_to "users/#{}"
  end

  def new
    @post = Post.new
  end

  private
  def post_params
    params.require(:post).permit(:description, :image, :user_id)
  end

end
