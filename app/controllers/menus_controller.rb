class MenusController < ApplicationController
  def index
    @menu = Menu.new
  end
end
