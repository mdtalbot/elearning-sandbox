require 'test_helper'

class LessonTextsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lesson_text = lesson_texts(:one)
  end

  test "should get index" do
    get lesson_texts_url
    assert_response :success
  end

  test "should get new" do
    get new_lesson_text_url
    assert_response :success
  end

  test "should create lesson_text" do
    assert_difference('LessonText.count') do
      post lesson_texts_url, params: { lesson_text: { adv: @lesson_text.adv, int: @lesson_text.int, sim: @lesson_text.sim } }
    end

    assert_redirected_to lesson_text_url(LessonText.last)
  end

  test "should show lesson_text" do
    get lesson_text_url(@lesson_text)
    assert_response :success
  end

  test "should get edit" do
    get edit_lesson_text_url(@lesson_text)
    assert_response :success
  end

  test "should update lesson_text" do
    patch lesson_text_url(@lesson_text), params: { lesson_text: { adv: @lesson_text.adv, int: @lesson_text.int, sim: @lesson_text.sim } }
    assert_redirected_to lesson_text_url(@lesson_text)
  end

  test "should destroy lesson_text" do
    assert_difference('LessonText.count', -1) do
      delete lesson_text_url(@lesson_text)
    end

    assert_redirected_to lesson_texts_url
  end
end
