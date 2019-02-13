class StylesController < ApplicationController
 before_action :authorized

  def index
    @index = Style.all
  end

  def show
    @style = Style.find(params[:id])
  end



private

  def style_params
    params.require(:style).permit(:name, :season)
  end
end
