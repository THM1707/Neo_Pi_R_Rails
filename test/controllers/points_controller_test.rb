require 'test_helper'

class PointsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get points_create_url
    assert_response :success
  end

  test "should get update" do
    get points_update_url
    assert_response :success
  end

end
