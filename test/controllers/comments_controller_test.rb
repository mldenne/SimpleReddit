require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
  test "should get body:text" do
    get :body:text
    assert_response :success
  end

  test "should get user_id:integer" do
    get :user_id:integer
    assert_response :success
  end

  test "should get link_id:integer" do
    get :link_id:integer
    assert_response :success
  end

end
