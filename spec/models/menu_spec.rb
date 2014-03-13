require 'rspec'
require 'menu'

describe "The menu" do

  it "initializes with the correct file" do
    menu = Menu.new

    expected = CSV.open('/Users/stevenmagelowitz/gSchoolWork/dynamic_restaurant_site/config/menu.csv').read
    expect(expected).to eq(menu.file.read)
  end

  it "finds " do
    menu = Menu.new


  end
end