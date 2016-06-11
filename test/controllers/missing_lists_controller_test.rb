require 'test_helper'

class MissingListsControllerTest < ActionController::TestCase
  setup do
    @missing_list = missing_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:missing_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create missing_list" do
    assert_difference('MissingList.count') do
      post :create, missing_list: { description: @missing_list.description, title: @missing_list.title }
    end

    assert_redirected_to missing_list_path(assigns(:missing_list))
  end

  test "should show missing_list" do
    get :show, id: @missing_list
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @missing_list
    assert_response :success
  end

  test "should update missing_list" do
    patch :update, id: @missing_list, missing_list: { description: @missing_list.description, title: @missing_list.title }
    assert_redirected_to missing_list_path(assigns(:missing_list))
  end

  test "should destroy missing_list" do
    assert_difference('MissingList.count', -1) do
      delete :destroy, id: @missing_list
    end

    assert_redirected_to missing_lists_path
  end
end
