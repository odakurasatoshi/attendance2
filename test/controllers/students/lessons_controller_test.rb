require 'test_helper'

class Students::LessonsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get students_lessons_index_url
    assert_response :success
  end

  test "should get show" do
    get students_lessons_show_url
    assert_response :success
  end

end
