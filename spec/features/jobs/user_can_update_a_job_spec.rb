require 'rails_helper'

describe "User can edit a job" do
  describe "user visits the show page for a job" do
    it "Can make changes to the job" do

    company = create(:company)
    job = create(:job, company: company)

    visit edit_company_job_path(company, job)
    fill_in "job[title]", with: "DevOps"
    fill_in "job[description]", with: "So fun!"
    fill_in "job[level_of_interest]", with: 80
    fill_in "job[city]", with: "Denver"

    click_on "Update Job"

expect(current_path).to eq ("/companies/#{company.id}/jobs/#{job.id}")
expect(page).to have_content("DevOps")
expect(page).to have_content("So fun!")
expect(page).to have_content(80)
expect(page).to have_content("Denver")

    end
  end
end
