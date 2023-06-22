require "test_helper"

class ChanelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @chanel = chanels(:one)
  end

  test "should get index" do
    get chanels_url
    assert_response :success
  end

  test "should get new" do
    get new_chanel_url
    assert_response :success
  end

  test "should create chanel" do
    assert_difference("Chanel.count") do
      post chanels_url, params: { chanel: { chanel: @chanel.chanel } }
    end

    assert_redirected_to chanel_url(Chanel.last)
  end

  test "should show chanel" do
    get chanel_url(@chanel)
    assert_response :success
  end

  test "should get edit" do
    get edit_chanel_url(@chanel)
    assert_response :success
  end

  test "should update chanel" do
    patch chanel_url(@chanel), params: { chanel: { chanel: @chanel.chanel } }
    assert_redirected_to chanel_url(@chanel)
  end

  test "should destroy chanel" do
    assert_difference("Chanel.count", -1) do
      delete chanel_url(@chanel)
    end

    assert_redirected_to chanels_url
  end
end
