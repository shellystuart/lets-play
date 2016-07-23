class ActivitySerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :instructions, :image, :url, :items
end
