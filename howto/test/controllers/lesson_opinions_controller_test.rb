require 'test_helper'

class LessonOpinionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lesson_opinion = lesson_opinions(:one)
  end

  test "should get index" do
    get lesson_opinions_url
    assert_response :success
  end

  test "should get new" do
    get new_lesson_opinion_url
    assert_response :success
  end

  test "should create lesson_opinion" do
    assert_difference('LessonOpinion.count') do
      post lesson_opinions_url, params: { lesson_opinion: {  } }
    end

    assert_redirected_to lesson_opinion_url(LessonOpinion.last)
  end

  test "should show lesson_opinion" do
    get lesson_opinion_url(@lesson_opinion)
    assert_response :success
  end

  test "should get edit" do
    get edit_lesson_opinion_url(@lesson_opinion)
    assert_response :success
  end

  test "should update lesson_opinion" do
    patch lesson_opinion_url(@lesson_opinion), params: { lesson_opinion: {  } }
    assert_redirected_to lesson_opinion_url(@lesson_opinion)
  end

  test "should destroy lesson_opinion" do
    assert_difference('LessonOpinion.count', -1) do
      delete lesson_opinion_url(@lesson_opinion)
    end

    assert_redirected_to lesson_opinions_url
  end
end
