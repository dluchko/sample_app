require 'spec_helper'

describe "Home page" do
    it "shold have the content 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
  end

  it "shold have the right titile 'Home'" do
      visit '/static_pages/home'
      expect(page).to have_title("RoR|Home")
  end
end

describe "Help page" do
    it "shold have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
  end

   it "shold have the right titile 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_title("RoR|Help")
  end
end

describe "About page" do
    it "shold have the content 'About'" do
      visit '/static_pages/about'
      expect(page).to have_content('About')
  end

   it "shold have the right titile 'About'" do
      visit '/static_pages/about'
      expect(page).to have_title("RoR|About")
  end
end

