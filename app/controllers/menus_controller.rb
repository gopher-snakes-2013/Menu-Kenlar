class MenusController < ApplicationController
  def index
    @menu = Menu.new
    @menus = Menu.all
  end

  def create
    @menu = Menu.new
    @menu.name = params[:menu][:name]
    if @menu.save
      redirect_to '/'
    else
      flash[:error] = @menu.errors[:name][0]
      redirect_to '/'
    end
  end

  def show
    @menu = Menu.find(params[:id])
    @item = Item.new
    @items = Item.where(menu_id: params[:id])
  end
end
