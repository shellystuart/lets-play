class ActivitySerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :instructions, :image, :url
  has_many :activityitems
end
