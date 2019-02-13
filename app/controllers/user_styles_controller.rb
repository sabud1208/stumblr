class UserStylesController < ApplicationController
  before_action :authorized, except: [:new, :create]

  def index

  end

  def show

  end

end
