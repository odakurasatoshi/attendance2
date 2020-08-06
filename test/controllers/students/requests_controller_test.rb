require 'test_helper'

class Students::RequestsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get students_requests_show_url
    assert_response :success
  end

end
