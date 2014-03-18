require 'spec_helper'
require 'date'

describe 'Visiting the home page' do
  it 'displays the correct paragraphs at the top' do
    visit '/'
    expect(page).to have_content('But be all this as it may; let the unseen, ambiguous synod in the air, or the vindictive princes and potentates of fire, have to do or not with earthly Ahab, yet, in this present matter of his leg, he took plain practical procedures; he called the carpenter.')
    expect(page).to have_content("And when that functionary appeared before him, he bade him without delay set about making a new leg, and directed the mates to see him supplied with all the studs and joists of jaw-ivory (Sperm Whale) which had thus far been accumulated on the voyage, in order that a careful selection of the stoutest, clearest-grained stuff might be secured. This done, the carpenter received orders to have the leg completed that night; and to provide all the fittings for it, independent of those pertaining to the distrusted one in use. Moreover, the ship's forge was ordered to be hoisted out of its temporary idleness in the hold; and, to accelerate the affair, the blacksmith was commanded to proceed at once to the forging of whatever iron contrivances might be needed.")
  end

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