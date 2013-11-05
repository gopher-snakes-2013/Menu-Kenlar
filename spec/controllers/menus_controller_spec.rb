require 'spec_helper'

describe MenusController do

  it "assigns @menus" do
    get :index
    expect(assigns(:menus)).to eq(Menu.all)
    end

    context "#create" do
      it "can create a new menu when provided valid params" do
        expect {
          post :create, menu: {name: "DERP"}}.to change(Menu, :count).by(1)
      end
      it "should show not create a new menu when provided invalid params" do
        expect {
          post :create, menu: {}}.to_not change(Menu, :count)
      end
  end


end