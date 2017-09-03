require 'rails_helper'

describe "User can delete a category" do
  describe "user visits the category index" do
    it "can delete a category" do

      jobs = create_list(:job, 3)

      categories = Category.all
      visit categories_path
      click_on("Delete", :match => :first)

      expect(categories.count).to eq 2
    end
  end
end
