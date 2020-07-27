require 'test_helper'

class Students::AttendeesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get students_attendees_index_url
    assert_response :success
  end

  test "should get show" do
    get students_attendees_show_url
    assert_response :success
  end

end
