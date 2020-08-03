require 'test_helper'

class Teachers::NoLessonsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get teachers_no_lessons_index_url
    assert_response :success
  end

  test "should get show" do
    get teachers_no_lessons_show_url
    assert_response :success
  end

end
