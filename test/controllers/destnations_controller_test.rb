require "test_helper"

class DestnationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @destnation = destnations(:one)
  end

  test "should get index" do
    get destnations_url
    assert_response :success
  end

  test "should get new" do
    get new_destnation_url
    assert_response :success
  end

  test "should create destnation" do
    assert_difference('Destnation.count') do
      post destnations_url, params: { destnation: {  } }
    end

    assert_redirected_to destnation_url(Destnation.last)
  end

  test "should show destnation" do
    get destnation_url(@destnation)
    assert_response :success
  end

  test "should get edit" do
    get edit_destnation_url(@destnation)
    assert_response :success
  end

  test "should update destnation" do
    patch destnation_url(@destnation), params: { destnation: {  } }
    assert_redirected_to destnation_url(@destnation)
  end

  test "should destroy destnation" do
    assert_difference('Destnation.count', -1) do
      delete destnation_url(@destnation)
    end

    assert_redirected_to destnations_url
  end
end
