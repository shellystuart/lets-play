class Item < ActiveRecord::Base
  has_many :activityitems
  has_many :activities, through: :activityitems

  validates :name, presence: true
end
