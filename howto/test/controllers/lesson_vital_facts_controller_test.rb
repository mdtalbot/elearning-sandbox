require 'test_helper'

class LessonVitalFactsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lesson_vital_fact = lesson_vital_facts(:one)
  end

  test "should get index" do
    get lesson_vital_facts_url
    assert_response :success
  end

  test "should get new" do
    get new_lesson_vital_fact_url
    assert_response :success
  end

  test "should create lesson_vital_fact" do
    assert_difference('LessonVitalFact.count') do
      post lesson_vital_facts_url, params: { lesson_vital_fact: { decision: @lesson_vital_fact.decision, decision_date: @lesson_vital_fact.decision_date, defendant: @lesson_vital_fact.defendant, defendant_att: @lesson_vital_fact.defendant_att, justices: @lesson_vital_fact.justices, plaintiff: @lesson_vital_fact.plaintiff, plaintiff_att: @lesson_vital_fact.plaintiff_att } }
    end

    assert_redirected_to lesson_vital_fact_url(LessonVitalFact.last)
  end

  test "should show lesson_vital_fact" do
    get lesson_vital_fact_url(@lesson_vital_fact)
    assert_response :success
  end

  test "should get edit" do
    get edit_lesson_vital_fact_url(@lesson_vital_fact)
    assert_response :success
  end

  test "should update lesson_vital_fact" do
    patch lesson_vital_fact_url(@lesson_vital_fact), params: { lesson_vital_fact: { decision: @lesson_vital_fact.decision, decision_date: @lesson_vital_fact.decision_date, defendant: @lesson_vital_fact.defendant, defendant_att: @lesson_vital_fact.defendant_att, justices: @lesson_vital_fact.justices, plaintiff: @lesson_vital_fact.plaintiff, plaintiff_att: @lesson_vital_fact.plaintiff_att } }
    assert_redirected_to lesson_vital_fact_url(@lesson_vital_fact)
  end

  test "should destroy lesson_vital_fact" do
    assert_difference('LessonVitalFact.count', -1) do
      delete lesson_vital_fact_url(@lesson_vital_fact)
    end

    assert_redirected_to lesson_vital_facts_url
  end
end
