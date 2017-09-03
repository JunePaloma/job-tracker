require 'rails_helper'

describe "User can create a new job category" do
  describe "User visits new page" do
    it "fills out a form that leads to a show page for that category" do
      visit new_category_path
      fill_in "category[title]", with: "Unicorn Catcher"
      click_on "Create"

      expect(current_path).to eq "/categories/#{Category.last.id}"
      expect(page).to have_content "Unicorn Catcher"

      end
    end
  end

  describe "user cannot create a new job category if that category alredy exists" do
    it "user tries to make a non-unique category" do

      category = Category.create(title: "Unicorn Catcher")
      visit new_category_path

      fill_in "category[title]", with:
      "Unicorn Catcher"
      click_on "Create"

      expect(page).to have_content "Make a new category"
    end
  end
