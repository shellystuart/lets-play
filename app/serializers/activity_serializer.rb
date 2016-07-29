class ActivitySerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :instructions, :image, :url, :indoor
  has_many :activityitems
end
