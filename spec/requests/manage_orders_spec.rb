require 'rails_helper'

RSpec.describe "ManageOrders", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/manage_orders/index"
      expect(response).to have_http_status(:success)
    end
  end

end
