require 'item'
require 'csv'

class Menu
  attr_accessor :file, :items_array

  def initialize
    @file = CSV.open(File.expand_path('../dynamic_restaurant_site/config/menu.csv'), headers: true)
    @items_array = []
  end

  def menu_items
    @file.each do |row|
      @items_array << [row['name'],row['price'],row['description'],row['image']]
    end
    @items_array
  end

end