class MenusController < ApplicationController
  def index
    @menu = Menu.new
    @menus = Menu.all
  end

  def create
    @menu = Menu.new
    @menu.name = params[:menu][:name]
    if @menu.save
    else
      @menu.errors[:name]
    end
  end
end
