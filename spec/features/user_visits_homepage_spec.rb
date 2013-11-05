require 'spec_helper'

describe "User" do
  # let!(:menu) {FactoryGirl.create(:menu)}
  let!(:item) {FactoryGirl.create(:item)}

  # let!(:menu){Menu.create(name: "breakfast")}
  # let!(:item){Item.create(name: "shit", price: 1, menu_id: 1)}

  it "can view existing menus" do
    p Menu.all
    p Item.all
    visit root_path
    expect(page).to have_content item.menu.name
  end

  it "can create menu"do
    visit root_path
    fill_in "menu[name]", with: "wtf"
    click_button "Add Menu"
    expect(page).to have_content "wtf"
  end

  it "can view the details of a menu" do
    visit root_path
    click_on "details"
    expect(page).to have_content "shit"
  end
end