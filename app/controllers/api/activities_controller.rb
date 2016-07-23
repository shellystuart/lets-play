class Api::ActivitiesController < ApplicationController

  def index
    @activities = Activity.all
    @search_result = []
    @user_items = []

    if params["items"]
      params_items = params["items"]["values"].split(",")
      params_items.each do |item|
        @user_items << item.to_i
      end
      cookies[:item_ids] = { value: @user_items, expires: 1.month.from_now }
      activity_search
    elsif cookies[:item_ids]
      cookie_items = cookies[:item_ids].split(/&/)
      cookie_items.each do |item|
        @user_items << item.to_i
      end
      activity_search
    end

    render json: { activities: @search_result, selected: @user_items }, status: :ok
  end

  private

  def activity_search
    item_search = Item.find(@user_items)
    @activities.each do |activity|
      if activity.items.all? { |item| item_search.include?(item) }
        @search_result << ActivitySerializer.new(activity)
      end
    end
  end
end
