require 'test_helper'

class Address2sControllerTest < ActionController::TestCase
  setup do
    @address2 = address2s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:address2s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create address2" do
    assert_difference('Address2.count') do
      post :create, :address2 => { :email => @address2.email, :name => @address2.name }
    end

    assert_redirected_to address2_path(assigns(:address2))
  end

  test "should show address2" do
    get :show, :id => @address2
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @address2
    assert_response :success
  end

  test "should update address2" do
    put :update, :id => @address2, :address2 => { :email => @address2.email, :name => @address2.name }
    assert_redirected_to address2_path(assigns(:address2))
  end

  test "should destroy address2" do
    assert_difference('Address2.count', -1) do
      delete :destroy, :id => @address2
    end

    assert_redirected_to address2s_path
  end
end
