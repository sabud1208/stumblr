class StylesController < ApplicationController
  before_action :authorized, except: [:new, :create]

  def index
    @styles = Style.all
  end

  def show
    #byebug
    @style = Style.find(params[:id])
  end

private
def style_params
  params.require(:style).permit(:name, :season, :image_url)
end

end
