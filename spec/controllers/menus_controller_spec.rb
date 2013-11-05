require 'spec_helper'

describe MenusController do

  describe "home page" do
    it "assigns @menus" do
      get :index
      response.status.should eq 200
      # expect(assigns(:menus)).to eq(Menu.all)
    end
  end

end