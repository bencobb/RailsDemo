require 'test_helper'

class AddStatusesControllerTest < ActionController::TestCase
  setup do
    @add_status = add_statuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:add_statuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create add_status" do
    assert_difference('AddStatus.count') do
      post :create, :add_status => @add_status.attributes
    end

    assert_redirected_to add_status_path(assigns(:add_status))
  end

  test "should show add_status" do
    get :show, :id => @add_status.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @add_status.to_param
    assert_response :success
  end

  test "should update add_status" do
    put :update, :id => @add_status.to_param, :add_status => @add_status.attributes
    assert_redirected_to add_status_path(assigns(:add_status))
  end

  test "should destroy add_status" do
    assert_difference('AddStatus.count', -1) do
      delete :destroy, :id => @add_status.to_param
    end

    assert_redirected_to add_statuses_path
  end
end
