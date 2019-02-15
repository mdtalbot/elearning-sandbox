require "application_system_test_case"

class LessonTextsTest < ApplicationSystemTestCase
  setup do
    @lesson_text = lesson_texts(:one)
  end

  test "visiting the index" do
    visit lesson_texts_url
    assert_selector "h1", text: "Lesson Texts"
  end

  test "creating a Lesson text" do
    visit lesson_texts_url
    click_on "New Lesson Text"

    fill_in "Adv", with: @lesson_text.adv
    fill_in "Int", with: @lesson_text.int
    fill_in "Sim", with: @lesson_text.sim
    click_on "Create Lesson text"

    assert_text "Lesson text was successfully created"
    click_on "Back"
  end

  test "updating a Lesson text" do
    visit lesson_texts_url
    click_on "Edit", match: :first

    fill_in "Adv", with: @lesson_text.adv
    fill_in "Int", with: @lesson_text.int
    fill_in "Sim", with: @lesson_text.sim
    click_on "Update Lesson text"

    assert_text "Lesson text was successfully updated"
    click_on "Back"
  end

  test "destroying a Lesson text" do
    visit lesson_texts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Lesson text was successfully destroyed"
  end
end
