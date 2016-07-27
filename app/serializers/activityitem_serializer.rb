class ActivityitemSerializer < ActiveModel::Serializer
  attributes :id, :quantity, :item_name

  def item_name
    object.item.name
  end
end
