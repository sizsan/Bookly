require 'rails_helper'

RSpec.describe "Books", type: :request do
  describe "GET /books" do
    it "works!" do
      get books_path
      expect(response).to have_http_status(302)
    end
  end
end
