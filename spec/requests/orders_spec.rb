require 'rails_helper'

RSpec.describe "Orders", type: :request do
  describe "GET /orders" do
    it "works!" do
      get new_order_path
      expect(response).to have_http_status(302)
    end
  end
end
