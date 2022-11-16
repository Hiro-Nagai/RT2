require "test_helper"

class RoomsControllerTest < ActionDispatch::IntegrationTest
  test "should get search" do
    get rooms_search_url
    assert_response :success
  end

  test "should get new" do
    get rooms_new_url
    assert_response :success
  end

  test "should get show" do
    get rooms_show_url
    assert_response :success
  end

  test "should get post" do
    get rooms_post_url
    assert_response :success
  end
end
