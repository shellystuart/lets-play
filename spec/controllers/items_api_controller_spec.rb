require "rails_helper"

RSpec.describe Api::ItemsController, type: :controller do
  describe "GET index" do
    it "gets a list of items with label and value" do
      items = create_list(:item, 5)
      get :index, format: :json
      json = JSON.parse(response.body)
      labels = json["items"].map { |c| c["label"] }
      values = json["items"].map { |c| c["value"] }

      expect(response.content_type).to eq("application/json")
      expect(response).to have_http_status(:ok)
      expect(labels).to match_array(items.map(&:name))
      expect(values).to match_array(items.map(&:id))
    end
  end
end
