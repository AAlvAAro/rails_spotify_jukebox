require 'rails_helper'

RSpec.describe "Tracks", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/tracks/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /add_to_playlist" do
    it "returns http success" do
      get "/tracks/add_to_playlist"
      expect(response).to have_http_status(:success)
    end
  end

end
