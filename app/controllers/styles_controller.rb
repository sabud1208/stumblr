class StylesController < ApplicationController

  def index
    @index = Style.all
  end

  def show
    @style = Style.find(params[:id])
  end

end
