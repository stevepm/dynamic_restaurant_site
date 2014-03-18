class Item
  attr_accessor :name, :price, :description, :image, :days

  def initialize(name = "Unknown", price = "Unknown", description = "Unknown", image = "food1.jpg", days = '1-2-3-4-5-6-7')
    @name = name
    @price = price_check(price)
    @description = description
    @image = image
    @days = days
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
    self.days = other.days
  end



end