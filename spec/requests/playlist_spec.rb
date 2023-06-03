require 'rails_helper'

RSpec.describe "Playlists", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/playlist/index"
      expect(response).to have_http_status(:success)
    end
  end

end
