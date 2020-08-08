require 'test_helper'

class Teachers::AttendeesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get teachers_attendees_index_url
    assert_response :success
  end
end
