require 'rails_helper'

describe "User can create a new job category" do
  describe "User visits new page" do
    it "fills out a form that leads to a show page for that category" do
      visit new_category_path
      fill_in "category[title]", with: "Unicorn Catcher"
      click_on "Create"

      #expect(current_path).to eq '/categories/1'
      expect(page).to have_content "Unicorn Catcher"

      end
    end
  end

  #sad path
