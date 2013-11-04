class MenuController < ApplicationController
  def index
    @menu = Menu.new
  end
end
