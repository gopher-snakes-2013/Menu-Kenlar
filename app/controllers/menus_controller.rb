class MenusController < ApplicationController
  def index
    @menu = Menu.new
    @menus = Menu.all
  end

  def create
    p '*' * 60
    p params
    @menu = Menu.new(menu_params)
    if @menu.save
      puts "*" * 100
      p @menu
      render :json => render_to_string(:partial => 'menu', :locals => {:menu => @menu}).to_json
    else
      puts "DIDNT SAVE ASSHOLE"
      render :json => @menu.errors.full_messages.join(', '), :status => :unprocessable_entity
    end
  end

  def show
    @menu = Menu.find(params[:id])
    @item = Item.new
    @items = Item.where(menu_id: params[:id])
  end

  private

  def menu_params
    params.require(:menu).permit(:name)
  end
end


# @menu = Menu.new
    # @menu.name = params[:menu][:name]
    # if @menu.save
    #   redirect_to '/'
    # else
    #   flash[:error] = @menu.errors[:name][0]
    #   redirect_to '/'
    # end
