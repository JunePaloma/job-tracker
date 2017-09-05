require 'rails_helper'

describe "user visits the page for all jobs" do
  it "and sees a list of all the jobs sorted by city" do
    create_list(:jobs, 4)
    visit "/jobs?sort=location"
    expect(page).to have_content "Job description"
  end
end
