class Api::ActivitiesController < ApplicationController
  def index
    items = Item.all
    activities = Activity.all
    searchresult = []
    useritems = []
    itemsearch = []

    if cookies[:item_ids]
      cookieitems = cookies[:item_ids].split(/&/)
      cookieitems.each do |cookie|
        useritems << cookie.to_i
      end
    end

    if params["items"]
      paramsitems = params["items"]["values"].split(",")
      cookies[:item_ids] = { value: paramsitems, expires: 1.month.from_now }
      newitems = []
      paramsitems.each do |item|
        newitems << item.to_i
      end
      useritems = newitems
    end

    if useritems
      itemsearch = Item.find(useritems)
    end

    activities.each do |activity|
      if activity.items.all? { |item| itemsearch.include?(item) }
        searchresult << activity
      end
    end
    render json: { activities: searchresult, selected: useritems }, status: :ok
  end
end
