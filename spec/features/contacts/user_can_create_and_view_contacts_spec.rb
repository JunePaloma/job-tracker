require 'rails_helper'

describe "user vists the show page for a company" do
  describe "sees a form to create a new contact" do
    describe "fills out the form" do
      it "can subtmit the form and see the contact appear on the company page" do
        company = create(:company)

        visit company_path(company.id)

        fill_in "contact[contact_name]", with: "Mona Lisa"
        fill_in "contact[position]", with: "Masterpiece"
        fill_in "contact[email]", with: "Mona@lisa.com"
        click_on "Submit"
      

        expect(page).to have_content "Mona Lisa"
        expect(current_path).to eq company_path(company)

      end
    end
  end
end
