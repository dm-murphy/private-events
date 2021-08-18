# spec/requests/users_spec.rb
require 'rails_helper'

RSpec.describe "Users", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/users"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      user = FactoryBot.create(:user)

      get users_path(user)
      expect(response).to have_http_status(:success)
    end
  end
end
