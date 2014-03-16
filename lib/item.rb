class Item
  attr_accessor :name, :price, :description, :image

  def initialize(name = "Unknown", price = "Unknown", description = "Unknown", image = "food1.jpg")
    @name = name
    @price = price_check(price)
    @description = description
    @image = image
  end

  def price_check(price, day = Date.today)
    if day.wednesday?
      ((price.to_f*(0.9)).round(2)).to_s
    else
      price
    end
  end

  def == (other)
    self.name == other.name
    self.price == other.price
    self.description == other.description
    self.image == other.image
  end

end