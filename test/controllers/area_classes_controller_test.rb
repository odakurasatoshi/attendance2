require 'test_helper'

class AreaClassesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get area_classes_new_url
    assert_response :success
  end

  test "should get index" do
    get area_classes_index_url
    assert_response :success
  end

end
