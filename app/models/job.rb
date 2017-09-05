class Job < ApplicationRecord
  validates :title, :level_of_interest, :city, :category, presence: true
  belongs_to :company
  belongs_to :category
  has_many :comments

  def self.sort_by_city
    all.order("city ASC")
  end

  def self.sort_by_intrest
    all.order(level_of_interest ASC)
  end
end
