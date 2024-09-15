require "test_helper"

class RoutineControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get routine_index_url
    assert_response :success
  end
end
