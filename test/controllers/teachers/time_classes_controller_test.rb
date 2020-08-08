require 'test_helper'

class Teachers::TimeClassesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get teachers_time_classes_index_url
    assert_response :success
  end
end
