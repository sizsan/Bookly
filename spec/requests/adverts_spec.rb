require 'rails_helper'

RSpec.describe "Adverts", type: :request do
  describe "GET /adverts" do
    it "works!" do
      get adverts_path
      expect(response).to have_http_status(200)
    end
  end
end
