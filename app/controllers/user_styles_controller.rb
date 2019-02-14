class UserStylesController < ApplicationController
  before_action :authorized, except: [:new, :create]

  def index

  end

  def show

  end
 def new

   render :new
 end

 def create
   @style = Style.find(params[:user_style][:style_id])
   @user_style = UserStyle.create(user_style_params)
    redirect_to style_path(@style)

 end

 private
 def user_style_params
   params.require(:user_style).permit(:user_id, :style_id, :comments)
 end
end
