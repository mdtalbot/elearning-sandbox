require 'test_helper'

class VitalInfosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vital_info = vital_infos(:one)
  end

  test "should get index" do
    get vital_infos_url
    assert_response :success
  end

  test "should get new" do
    get new_vital_info_url
    assert_response :success
  end

  test "should create vital_info" do
    assert_difference('VitalInfo.count') do
      post vital_infos_url, params: { vital_info: {  } }
    end

    assert_redirected_to vital_info_url(VitalInfo.last)
  end

  test "should show vital_info" do
    get vital_info_url(@vital_info)
    assert_response :success
  end

  test "should get edit" do
    get edit_vital_info_url(@vital_info)
    assert_response :success
  end

  test "should update vital_info" do
    patch vital_info_url(@vital_info), params: { vital_info: {  } }
    assert_redirected_to vital_info_url(@vital_info)
  end

  test "should destroy vital_info" do
    assert_difference('VitalInfo.count', -1) do
      delete vital_info_url(@vital_info)
    end

    assert_redirected_to vital_infos_url
  end
end
