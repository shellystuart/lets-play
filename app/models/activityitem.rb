class Activityitem < ActiveRecord::Base
  belongs_to :activity
  belongs_to :item

  validates :activity, presence: true
  validates :item, presence: true
end
