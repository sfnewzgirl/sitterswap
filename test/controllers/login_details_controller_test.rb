require 'test_helper'

class LoginDetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @login_detail = login_details(:one)
  end

  test "should get index" do
    get login_details_url
    assert_response :success
  end

  test "should get new" do
    get new_login_detail_url
    assert_response :success
  end

  test "should create login_detail" do
    assert_difference('LoginDetail.count') do
      post login_details_url, params: { login_detail: { password: @login_detail.password, person_id: @login_detail.person_id, user_name: @login_detail.user_name } }
    end

    assert_redirected_to login_detail_url(LoginDetail.last)
  end

  test "should show login_detail" do
    get login_detail_url(@login_detail)
    assert_response :success
  end

  test "should get edit" do
    get edit_login_detail_url(@login_detail)
    assert_response :success
  end

  test "should update login_detail" do
    patch login_detail_url(@login_detail), params: { login_detail: { password: @login_detail.password, person_id: @login_detail.person_id, user_name: @login_detail.user_name } }
    assert_redirected_to login_detail_url(@login_detail)
  end

  test "should destroy login_detail" do
    assert_difference('LoginDetail.count', -1) do
      delete login_detail_url(@login_detail)
    end

    assert_redirected_to login_details_url
  end
end
