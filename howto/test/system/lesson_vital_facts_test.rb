require "application_system_test_case"

class LessonVitalFactsTest < ApplicationSystemTestCase
  setup do
    @lesson_vital_fact = lesson_vital_facts(:one)
  end

  test "visiting the index" do
    visit lesson_vital_facts_url
    assert_selector "h1", text: "Lesson Vital Facts"
  end

  test "creating a Lesson vital fact" do
    visit lesson_vital_facts_url
    click_on "New Lesson Vital Fact"

    fill_in "Decision", with: @lesson_vital_fact.decision
    fill_in "Decision date", with: @lesson_vital_fact.decision_date
    fill_in "Defendant", with: @lesson_vital_fact.defendant
    fill_in "Defendant att", with: @lesson_vital_fact.defendant_att
    fill_in "Justices", with: @lesson_vital_fact.justices
    fill_in "Plaintiff", with: @lesson_vital_fact.plaintiff
    fill_in "Plaintiff att", with: @lesson_vital_fact.plaintiff_att
    click_on "Create Lesson vital fact"

    assert_text "Lesson vital fact was successfully created"
    click_on "Back"
  end

  test "updating a Lesson vital fact" do
    visit lesson_vital_facts_url
    click_on "Edit", match: :first

    fill_in "Decision", with: @lesson_vital_fact.decision
    fill_in "Decision date", with: @lesson_vital_fact.decision_date
    fill_in "Defendant", with: @lesson_vital_fact.defendant
    fill_in "Defendant att", with: @lesson_vital_fact.defendant_att
    fill_in "Justices", with: @lesson_vital_fact.justices
    fill_in "Plaintiff", with: @lesson_vital_fact.plaintiff
    fill_in "Plaintiff att", with: @lesson_vital_fact.plaintiff_att
    click_on "Update Lesson vital fact"

    assert_text "Lesson vital fact was successfully updated"
    click_on "Back"
  end

  test "destroying a Lesson vital fact" do
    visit lesson_vital_facts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Lesson vital fact was successfully destroyed"
  end
end
