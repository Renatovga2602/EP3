require 'test_helper'

class AdminViewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_view = admin_views(:one)
  end

  test "should get index" do
    get admin_views_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_view_url
    assert_response :success
  end

  test "should create admin_view" do
    assert_difference('AdminView.count') do
      post admin_views_url, params: { admin_view: {  } }
    end

    assert_redirected_to admin_view_url(AdminView.last)
  end

  test "should show admin_view" do
    get admin_view_url(@admin_view)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_view_url(@admin_view)
    assert_response :success
  end

  test "should update admin_view" do
    patch admin_view_url(@admin_view), params: { admin_view: {  } }
    assert_redirected_to admin_view_url(@admin_view)
  end

  test "should destroy admin_view" do
    assert_difference('AdminView.count', -1) do
      delete admin_view_url(@admin_view)
    end

    assert_redirected_to admin_views_url
  end
end
