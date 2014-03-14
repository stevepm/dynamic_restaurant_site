class Item
  attr_accessor :name, :price, :description, :image

  def initialize(name, price, description, image)
    @name = name
    @price = price
    @description = description
    @image = File.expand_path("../dynamic_restaurant_site/public/images/#{image}")
  end

  def == (other)
    self.name == other.name
    self.price == other.price
    self.description == other.description
    self.image = other.image
  end

end