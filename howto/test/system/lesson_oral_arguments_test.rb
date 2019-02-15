require "application_system_test_case"

class LessonOralArgumentsTest < ApplicationSystemTestCase
  setup do
    @lesson_oral_argument = lesson_oral_arguments(:one)
  end

  test "visiting the index" do
    visit lesson_oral_arguments_url
    assert_selector "h1", text: "Lesson Oral Arguments"
  end

  test "creating a Lesson oral argument" do
    visit lesson_oral_arguments_url
    click_on "New Lesson Oral Argument"

    click_on "Create Lesson oral argument"

    assert_text "Lesson oral argument was successfully created"
    click_on "Back"
  end

  test "updating a Lesson oral argument" do
    visit lesson_oral_arguments_url
    click_on "Edit", match: :first

    click_on "Update Lesson oral argument"

    assert_text "Lesson oral argument was successfully updated"
    click_on "Back"
  end

  test "destroying a Lesson oral argument" do
    visit lesson_oral_arguments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Lesson oral argument was successfully destroyed"
  end
end
