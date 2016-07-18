class Activity < ActiveRecord::Base
  has_many :activityitems
  has_many :items, through: :activityitems

  validates :title, presence: true
  validates :description, presence: true
  validates :instructions, presence: true
end
