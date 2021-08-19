require 'rails_helper'

RSpec.describe "Events", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/events"
      expect(response).to have_http_status(:success)
    end    
  end

  describe "GET /show" do
    it "returns http success" do
      event = create(:event, :skip_validate)

      get events_path(event)
      expect(response).to have_http_status(:success)
    end
  end

  # params missing error

  # describe "POST /create" do
  #   it "returns http success" do
  #     event = create(:event, :skip_validate)

  #     post events_path(event)
  #     expect(response).to have_http_status(:success)
  #   end
  # end
end
