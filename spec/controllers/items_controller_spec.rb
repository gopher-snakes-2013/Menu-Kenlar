require 'spec_helper'

describe ItemsController do

  context "items#create" do
      let!(:menu){Menu.create(name: "WTF")}

    it "should create an item when provided valid params" do
      # item = Item.create(name: "wat", price: 1)
      expect{ post :create, use_route: menu_items_path(menu.id), menu_id: 1, item:{name: "please", price: 1}}.to change{Item.count}.by(1)
    end

    it "should not create a new item when provided invalid params" do
      expect {
        post :create, use_route: menu_items_path(menu.id), menu_id: 1, item:{name: ""}}.to_not change(Item, :count)
    end
  end
end















# menu = Menu.create(name: "MENU NAME")
#       # {post: "/menu/1/items"}, :create, item: {name: "DERP", price: 1, menu_id: 1 }}.to change(Item, :count).by(1)
#       p Menu.all
#       p menu_items_path(1)
#       # expect{
#         post menu_path(1),  {id:2}
#         p Item.all
#         # }.to change{Item.count}.by(1)
#       # post menu_items_path(1), item: {name: "DERP", price: 1, menu_id: 1 }}.to change(Item, :count).by(1)