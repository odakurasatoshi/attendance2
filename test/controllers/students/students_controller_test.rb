require 'test_helper'

class Students::StudentsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get students_students_show_url
    assert_response :success
  end

  test "should get edit" do
    get students_students_edit_url
    assert_response :success
  end

end
