require 'rspec'
require 'menu'

describe "The menu" do

  it "initializes with the correct file" do
    menu = Menu.new

    expected = CSV.open('/Users/stevenmagelowitz/gSchoolWork/dynamic_restaurant_site/config/menu.csv', headers: true).read
    expect(expected).to eq(menu.file.read)
  end

  it "the menu matches the contents in the file and returns an array" do
    menu = Menu.new
    menu.menu_items

    expect(menu.menu_items).to eq([["Channa Masala", "5.95", "Yummy goodness", "food1.jpg"], ["Chicken Tikka Masala", "5.95", "Yummy goodness", "food2.jpg"], ["Saag Paneer", "5.95", "Yummy goodness", "food3.jpg"], ["Alu Gobi", "5.95", "Yummy goodness", "food4.jpg"]])

  end
end