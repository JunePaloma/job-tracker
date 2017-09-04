require 'rails_helper'

describe "User can edit a category" do
describe "user visits the category index" do
  it "can edit the category" do

    category = Category.create(title: "Dish washer")

    visit categories_path

    click_on "Edit"

    fill_in "category[title]", with: "Unicorn catcher"

    click_on "Update"
    expect(page).to have_content("Unicorn catcher")

    end
  end
end
