require 'test_helper'

class Teachers::AreaClassesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get teachers_area_classes_index_url
    assert_response :success
  end
end
