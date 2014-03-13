require 'item'
require 'csv'

class Menu
  attr_accessor :file

  def initialize
    @file = CSV.open(File.expand_path('../dynamic_restaurant_site/config/menu.csv'))
  end

  def find_items
    @file.readlines do |line|

    end
  end

  def items
    [
      Item.new("Channa Masala", 5.95, "Yummy goodness", "test"),
      Item.new("Chicken Tikka Masala", 5.95, "Yummy goodness", "test"),
      Item.new("Saag Paneer",5.95,"Yummy goodness", "test")
    ]
  end

  def == (object)
    self.file == object.file
  end

end