require 'test_helper'

class Teachers::CoursesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get teachers_courses_index_url
    assert_response :success
  end
end
