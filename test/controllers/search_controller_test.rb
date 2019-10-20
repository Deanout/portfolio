require 'test_helper'

class SearchControllerTest < ActionDispatch::IntegrationTest
  test "should get search" do
    get search_search_url
    assert_response :success
  end

end
