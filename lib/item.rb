class Item
  attr_accessor :name, :price, :description

  def initialize(name, price, description)
    @name = name
    @price = price
    @description = description
  end

  def == (other)
    self.name == other.name
    self.price == other.price
    self.description == other.description
  end

end