require 'test_helper'

class AdvertsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get adverts_index_url
    assert_response :success
  end

end
