require 'rails_helper'

describe "User sees one company" do
  scenario "a user sees a company" do

    job = create(:job)
    company = job.company

    visit company_path(company)

    expect(current_path).to eq("/companies/#{company.id}/jobs")
    expect(page).to have_content("Company")
    expect(page).to have_content("Job title")
  end
end
