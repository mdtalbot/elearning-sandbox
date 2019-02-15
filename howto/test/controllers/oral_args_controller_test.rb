require 'test_helper'

class OralArgsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @oral_arg = oral_args(:one)
  end

  test "should get index" do
    get oral_args_url
    assert_response :success
  end

  test "should get new" do
    get new_oral_arg_url
    assert_response :success
  end

  test "should create oral_arg" do
    assert_difference('OralArg.count') do
      post oral_args_url, params: { oral_arg: { desc_text: @oral_arg.desc_text, header_text: @oral_arg.header_text, link_url: @oral_arg.link_url } }
    end

    assert_redirected_to oral_arg_url(OralArg.last)
  end

  test "should show oral_arg" do
    get oral_arg_url(@oral_arg)
    assert_response :success
  end

  test "should get edit" do
    get edit_oral_arg_url(@oral_arg)
    assert_response :success
  end

  test "should update oral_arg" do
    patch oral_arg_url(@oral_arg), params: { oral_arg: { desc_text: @oral_arg.desc_text, header_text: @oral_arg.header_text, link_url: @oral_arg.link_url } }
    assert_redirected_to oral_arg_url(@oral_arg)
  end

  test "should destroy oral_arg" do
    assert_difference('OralArg.count', -1) do
      delete oral_arg_url(@oral_arg)
    end

    assert_redirected_to oral_args_url
  end
end
