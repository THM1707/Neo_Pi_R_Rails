require 'test_helper'

class ResultsControllerTest < ActionDispatch::IntegrationTest
  test "should get all" do
    get results_all_url
    assert_response :success
  end

end
