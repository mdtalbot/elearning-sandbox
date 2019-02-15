require "application_system_test_case"

class VitalInfosTest < ApplicationSystemTestCase
  setup do
    @vital_info = vital_infos(:one)
  end

  test "visiting the index" do
    visit vital_infos_url
    assert_selector "h1", text: "Vital Infos"
  end

  test "creating a Vital info" do
    visit vital_infos_url
    click_on "New Vital Info"

    click_on "Create Vital info"

    assert_text "Vital info was successfully created"
    click_on "Back"
  end

  test "updating a Vital info" do
    visit vital_infos_url
    click_on "Edit", match: :first

    click_on "Update Vital info"

    assert_text "Vital info was successfully updated"
    click_on "Back"
  end

  test "destroying a Vital info" do
    visit vital_infos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Vital info was successfully destroyed"
  end
end
