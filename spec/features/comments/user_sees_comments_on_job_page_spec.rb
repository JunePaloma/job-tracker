require 'rails_helper'

describe "User visits the show page for a job" do
  it "sees a form to submit a comment about that job" do
    it "submits the comment and the comment appears on the job page" do
      it "comments for the job will all show up, and be organized by time" do

        comment = create(:comment)
        job = Job.find(comment.job_id)
        company = Company.find(job.company_id)

          visit job_path(job)

          fill_in "comment[body]", with: "This sounds like a great job"
          fill_in "comment[author]", with: "Sally"


      end
    end
  end
end
