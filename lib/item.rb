class Item
  attr_accessor :name, :price, :description, :image

  def initialize(name = "Unknown", price = "Unknown", description = "Unknown", image = "food1.jpg")
    @name = name
    @price = price
    @description = description
    @image = image
  end

  def == (other)
    self.name == other.name
    self.price == other.price
    self.description == other.description
    self.image == other.image
  end

end