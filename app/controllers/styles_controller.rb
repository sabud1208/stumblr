class StylesController < ApplicationController
  # before_action :authorized, except: [:new, :create]
  def index
    @styles = Style.all
  end

  def show
    @style = Style.find(params[:id])
  end

end
