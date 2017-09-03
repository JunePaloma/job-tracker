require 'rails_helper'

describe "User can destory a job" do
  describe "User visits a page for a job" do
    it "can destroy the record" do
      job = create(:job)
      company = job.company

    visit "/companies/#{company.id}/jobs/#{job.id}"

    click_on "Delete"

    expect(current_path).to eq ("/companies/#{company.id}/jobs")
    end
  end
end
