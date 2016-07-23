class Api::ItemsController < ApiController
  def index
    items = Item.all
    field_list = []
    items.each do |item|
      field_list << { label: item.name, value: item.id }
    end
    field_list.sort_by!{ |item| item[:label].downcase }
    render json: { items: field_list }, status: :ok
  end
end
