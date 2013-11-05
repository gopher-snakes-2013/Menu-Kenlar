class ItemsController < ApplicationController
  def index
  end

  def create
    @item = Item.new
    @item.name = params[:item][:name]
    @item.price = params[:item][:price]
    # current_menu = Menu.find(params[:menu_id])
    # current_menu.items << @item

    @item.menu_id = params[:menu_id]
    if @item.save
      redirect_to menu_path(params[:menu_id])
    else
      flash[:error] = @item.errors[:name][0]
      redirect_to menu_path(@item.menu_id)
    end
  end
end
