require 'test_helper'

class FixedPagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get logout" do
    get :logout
    assert_response :success
  end

  test "should get error" do
    get :error
    assert_response :success
  end

end
