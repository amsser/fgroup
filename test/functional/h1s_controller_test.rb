require 'test_helper'

class H1sControllerTest < ActionController::TestCase
  setup do
    @h1 = h1s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:h1s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create h1" do
    assert_difference('H1.count') do
      post :create, h1: @h1.attributes
    end

    assert_redirected_to h1_path(assigns(:h1))
  end

  test "should show h1" do
    get :show, id: @h1
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @h1
    assert_response :success
  end

  test "should update h1" do
    put :update, id: @h1, h1: @h1.attributes
    assert_redirected_to h1_path(assigns(:h1))
  end

  test "should destroy h1" do
    assert_difference('H1.count', -1) do
      delete :destroy, id: @h1
    end

    assert_redirected_to h1s_path
  end
end
