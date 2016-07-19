class ActivitiesController < ApplicationController
  def index
    @items = Item.all
    @activities = Activity.all
    @searchresult = []

    if params["activity"]
      @search = params["activity"]["item_ids"]
      @itemsearch = Item.find(@search)
      @activities.each do |activity|
        if activity.items.all? { |item| @itemsearch.include?(item) }
          @searchresult << activity
        end
      end
    end
  end
end
