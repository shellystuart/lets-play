require "rails_helper"

RSpec.describe Api::ActivitiesController, type: :controller do
  describe "GET index" do
    let!(:activity) { FactoryGirl.create(:activity) }
    let!(:activity2) { FactoryGirl.create(:activity) }
    let!(:item) { FactoryGirl.create(:item) }
    let!(:item2) { FactoryGirl.create(:item) }
    let!(:ai1) { FactoryGirl.create(:activityitem, activity_id: activity.id, item_id: item.id) }
    let!(:ai2) { FactoryGirl.create(:activityitem, activity_id: activity2.id, item_id: item.id) }
    let!(:ai3) { FactoryGirl.create(:activityitem, activity_id: activity2.id, item_id: item2.id) }

    it "returns no results when no cookie or data is provided" do
      get :index, format: :json
      json = JSON.parse(response.body)

      expect(response.content_type).to eq("application/json")
      expect(response).to have_http_status(:ok)
      expect(json["activities"]).to match_array([])
      expect(json["selected"]).to match_array([])
    end

    it "returns selected items with matching activities when cookie is set" do
      request.cookies[:item_ids] = "#{item.id}&#{item2.id}"
      get :index, format: :json
      json = JSON.parse(response.body)
      activities = json["activities"].map { |c| c["id"] }
      selected = json["selected"]

      expect(response.content_type).to eq("application/json")
      expect(response).to have_http_status(:ok)
      expect(cookies[:item_ids]).to eq("#{item.id}&#{item2.id}")
      expect(activities.count).to be 2
      expect(activities[0]).to eq activity.id
      expect(activities[1]).to eq activity2.id
      expect(selected).to match_array([item.id, item2.id])
    end

    it "sets new cookie if items are selected via search" do
      get :index, items: { values: "1,2" }, format: :json
      json = JSON.parse(response.body)
      activities = json["activities"].map { |c| c["id"] }
      selected = json["selected"]

      expect(response.content_type).to eq("application/json")
      expect(response).to have_http_status(:ok)
      expect(cookies[:item_ids]).to match_array([item.id, item2.id])
    end

    it "returns new selected items set and matching activities when items are selected via search" do
      request.cookies[:item_ids] = "#{item.id}"
      get :index, items: { values: "1,2" }, format: :json
      json = JSON.parse(response.body)
      activities = json["activities"].map { |c| c["id"] }
      selected = json["selected"]

      expect(response.content_type).to eq("application/json")
      expect(response).to have_http_status(:ok)
      expect(cookies[:item_ids]).to match_array([item.id, item2.id])
      expect(activities.count).to be 2
      expect(activities[0]).to eq activity.id
      expect(activities[1]).to eq activity2.id
      expect(selected).to match_array([item.id, item2.id])
    end
  end
end
