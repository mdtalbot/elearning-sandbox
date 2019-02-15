require "application_system_test_case"

class LessonOpinionsTest < ApplicationSystemTestCase
  setup do
    @lesson_opinion = lesson_opinions(:one)
  end

  test "visiting the index" do
    visit lesson_opinions_url
    assert_selector "h1", text: "Lesson Opinions"
  end

  test "creating a Lesson opinion" do
    visit lesson_opinions_url
    click_on "New Lesson Opinion"

    click_on "Create Lesson opinion"

    assert_text "Lesson opinion was successfully created"
    click_on "Back"
  end

  test "updating a Lesson opinion" do
    visit lesson_opinions_url
    click_on "Edit", match: :first

    click_on "Update Lesson opinion"

    assert_text "Lesson opinion was successfully updated"
    click_on "Back"
  end

  test "destroying a Lesson opinion" do
    visit lesson_opinions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Lesson opinion was successfully destroyed"
  end
end
