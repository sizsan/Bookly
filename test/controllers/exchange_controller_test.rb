require 'test_helper'

class ExchangeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get exchange_index_url
    assert_response :success
  end

end
