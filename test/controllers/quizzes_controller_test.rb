require 'test_helper'

class QuizzesControllerTest < ActionDispatch::IntegrationTest
  test "should get all" do
    get quizzes_all_url
    assert_response :success
  end

end
