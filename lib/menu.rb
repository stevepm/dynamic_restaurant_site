require 'item'

class Menu

  def items
    [
      Item.new("Channa Masala", 5.95, "Yummy goodness"),
      Item.new("Chicken Tikka Masala", 5.95, "Yummy goodness"),
      Item.new("Saag Paneer",5.95,"Yummy goodness")
    ]
  end

end