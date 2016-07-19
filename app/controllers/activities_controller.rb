class ActivitiesController < ApplicationController
  def index
    @items = Item.all
    @activities = Activity.all
    @searchresult = []
    @useritems = nil
    @itemsearch = []

    if cookies[:item_ids]
      @useritems = cookies[:item_ids].split(/&/)
    end

    if params["cookies"]
      params["cookies"]["item_ids"].pop
      cookies[:item_ids] = { value: params["cookies"]["item_ids"], expires: 1.month.from_now }
      @useritems = cookies[:item_ids]
    end

    if @useritems
      @itemsearch = Item.find(@useritems)
    end

    @activities.each do |activity|
      if activity.items.all? { |item| @itemsearch.include?(item) }
        @searchresult << activity
      end
    end
  end
end
