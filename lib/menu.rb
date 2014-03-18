require 'item'
require 'csv'
require 'date'

class Menu
  attr_accessor :file, :items_array

  def initialize
    @file = CSV.open(File.expand_path('../../config/menu.csv',__FILE__), headers: true)
    @items_array = []
    @days = {
      1 => Date.today.monday?,
      2 => Date.today.tuesday?,
      3 => Date.today.wednesday?,
      4 => Date.today.thursday?,
      5 => Date.today.friday?,
      6 => Date.today.saturday?,
      7 => Date.today.sunday?
    }
  end

  def menu_items
    @file.each do |row|
      row['days'].split('-').each do |day|
        if @days[day.to_i]
          @items_array << Item.new(row['name'],row['price'],row['description'],row['image'])
        end
      end
    end
    @items_array
  end
end