require 'test_helper'

class Teachers::GenresControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get teachers_genres_index_url
    assert_response :success
  end

end
