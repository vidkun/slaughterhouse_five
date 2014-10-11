require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get order" do
    get :order
    assert_response :success
  end

  test "should get confirmation" do
    get :confirmation
    assert_response :success
  end

end
