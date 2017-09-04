require "rails_helper"

describe "user visits the show page for a categories" do
  it "sees all the jobs for that category" do

    jobs = create_list(:job, 5)
    job1 = jobs[1]
    @category = Category.find(job1.category_id)

    visit category_path(@category)

    expect(page).to have_content "Job title"

  end
end
