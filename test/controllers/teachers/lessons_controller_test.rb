require 'test_helper'

class Teachers::LessonsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get teachers_lessons_index_url
    assert_response :success
  end

  test "should get new" do
    get teachers_lessons_new_url
    assert_response :success
  end

  test "should get edit" do
    get teachers_lessons_edit_url
    assert_response :success
  end

end
