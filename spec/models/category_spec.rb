require 'rails_helper'

RSpec.describe Category, type: :model do

  describe "validations" do

    describe "invalid attributes" do
      it "is invalid with a title" do
        category = Category.new()
        expect(category).to be_invalid
      end
    end

describe "valid attributes" do
  it "is valid wih a title" do
    category = Category.new(title: "Finance")
    expect(category).to be_valid
  end
end

describe "relationships" do
  it "has many jobs" do
    category = Category.new(title: "Softwear")
    expect(category).to respond_to(:jobs)
  end
end

  end
end
