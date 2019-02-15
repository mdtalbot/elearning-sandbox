require 'test_helper'

class LessonOralArgumentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lesson_oral_argument = lesson_oral_arguments(:one)
  end

  test "should get index" do
    get lesson_oral_arguments_url
    assert_response :success
  end

  test "should get new" do
    get new_lesson_oral_argument_url
    assert_response :success
  end

  test "should create lesson_oral_argument" do
    assert_difference('LessonOralArgument.count') do
      post lesson_oral_arguments_url, params: { lesson_oral_argument: {  } }
    end

    assert_redirected_to lesson_oral_argument_url(LessonOralArgument.last)
  end

  test "should show lesson_oral_argument" do
    get lesson_oral_argument_url(@lesson_oral_argument)
    assert_response :success
  end

  test "should get edit" do
    get edit_lesson_oral_argument_url(@lesson_oral_argument)
    assert_response :success
  end

  test "should update lesson_oral_argument" do
    patch lesson_oral_argument_url(@lesson_oral_argument), params: { lesson_oral_argument: {  } }
    assert_redirected_to lesson_oral_argument_url(@lesson_oral_argument)
  end

  test "should destroy lesson_oral_argument" do
    assert_difference('LessonOralArgument.count', -1) do
      delete lesson_oral_argument_url(@lesson_oral_argument)
    end

    assert_redirected_to lesson_oral_arguments_url
  end
end
