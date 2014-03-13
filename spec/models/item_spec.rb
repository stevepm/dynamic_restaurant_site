require 'spec_helper'
require 'item'

describe "Items for the menu" do

  it "has a name" do
    item = Item.new("Channa Masala", 5.95, "yummy in my tummy", "test")

    expect(item.name).to eq("Channa Masala")
  end

  it "has a price" do
    item = Item.new("Channa Masala", 5.95, "yummy in my tummy", "test")

    expect(item.price).to eq(5.95)
  end

  it "has a description" do
    item = Item.new("Channa Masala", 5.95, "yummy in my tummy", "test")

    expect(item.description).to eq("yummy in my tummy")
  end

  it "knows that two items are the same if they have the same attributes" do
    item = Item.new("Channa Masala", 5.95, "yummy in my tummy", "test")
    item2 = Item.new("Channa Masala", 5.95, "yummy in my tummy", "test")

    expect(item).to eq(item2)
  end

end