require "test_helper"

class PostMoviesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get post_movies_new_url
    assert_response :success
  end

  test "should get index" do
    get post_movies_index_url
    assert_response :success
  end

  test "should get show" do
    get post_movies_show_url
    assert_response :success
  end
end
