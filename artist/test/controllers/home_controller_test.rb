require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get mypage" do
    get :mypage
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

  test "should get help" do
    get :help
    assert_response :success
  end

end
