require 'rails_helper'

RSpec.describe "UserPrograms", type: :request do
  describe "GET /subscribe" do
    it "returns http success" do
      get "/user_programs/subscribe"
      expect(response).to have_http_status(:success)
    end
  end

end
