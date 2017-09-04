require 'rails_helper'

describe "User visits the show page for a job" do
  describe "sees a form to submit a comment about that job" do
    describe "submits the comment and the comment appears on the job page" do
      it "comments for the job will all show up, and be organized by time" do

        job = create(:job)
        company = Company.find(job.company_id)

          visit company_job_path(company, job)

          fill_in "comment[body]", with: "This sounds like a great job"
          fill_in "comment[author_name]", with: "Sally"
          
          click_on "Submit"

          expect(page).to have_content "This sounds like a great job"

      end
    end
  end
end
