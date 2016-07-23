require "rails_helper"

RSpec.describe ActivitiesController, type: :controller do
  describe "GET index" do
    it "renders template" do
      get :index
      expect(response).to render_template(:index)
      expect(response).to have_http_status(:ok)
    end
  end
end
