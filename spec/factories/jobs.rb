FactoryGirl.define do

  factory :job do
    sequence :title do |n|
      "Job title #{n}"
    end
  sequence :description do |n|
    "Job description #{n}"
  end
  sequence :city do |n|
    "City #{n}"
  end
  sequence :level_of_interest do |n|
    "level #{n}"
  end

  company
  category
  end
end
