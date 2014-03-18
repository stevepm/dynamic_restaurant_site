require 'spec_helper'
require 'date'

describe 'Visiting the home page' do
  
  it "displays all of the menu items for Monday" do
    visit "/"
    if Date.today.monday?
      expect(page).to have_content("Channa Masala")
      expect(page).to have_content("Alu Gobi")
    end
  end

  it "displays all of the menu items for Tuesday" do
    visit "/"
    if Date.today.tuesday?
      expect(page).to have_content("Channa Masala")
    end
  end

  it "displays all of the menu items for Wednesday" do
    visit "/"
    if Date.today.wednesday?
      expect(page).to have_content("Channa Masala")
      expect(page).to have_content("Chicken Tikka Masala")
    end
  end

  it "displays all of the menu items for Thursday" do
    visit "/"
    if Date.today.thursday?
      expect(page).to have_content("Chicken Tikka Masala")
    end
  end

  it "displays all of the menu items for Friday" do
    visit "/"
    if Date.today.friday?
      expect(page).to have_content("Saag Paneer")
    end
  end

  it "displays all of the menu items for Saturday" do
    visit "/"
    if Date.today.saturday?
      expect(page).to have_content("Saag Paneer")
    end
  end

  it "displays all of the menu items for Sunday" do
    visit "/"
    if Date.today.sunday?
      expect(page).to have_content("Alu Gobi")
    end
  end

  it "displays the correct year in the footer" do
    visit "/"
    within("footer") do
      expect(page).to have_content("2014")
    end

  end
  
end