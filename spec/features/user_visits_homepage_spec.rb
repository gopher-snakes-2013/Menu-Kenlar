require 'spec_helper'

describe "User" do
  let!(:item) {FactoryGirl.create(:item)}
  # let!(:menu) {FactoryGirl.create(:menu)}


  it "can view existing menus" do
    visit root_path
    expect(page).to have_content item.menu.name
  end

  it "can view the details of a menu" do
    visit root_path
    click_on ("details")
    expect(page).to have_content("shit")
  end
end