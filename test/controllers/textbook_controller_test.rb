require 'test_helper'

class TextbookControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get textbook_index_url
    assert_response :success
  end

end
