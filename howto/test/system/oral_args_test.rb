require "application_system_test_case"

class OralArgsTest < ApplicationSystemTestCase
  setup do
    @oral_arg = oral_args(:one)
  end

  test "visiting the index" do
    visit oral_args_url
    assert_selector "h1", text: "Oral Args"
  end

  test "creating a Oral arg" do
    visit oral_args_url
    click_on "New Oral Arg"

    fill_in "Desc text", with: @oral_arg.desc_text
    fill_in "Header text", with: @oral_arg.header_text
    fill_in "Link url", with: @oral_arg.link_url
    click_on "Create Oral arg"

    assert_text "Oral arg was successfully created"
    click_on "Back"
  end

  test "updating a Oral arg" do
    visit oral_args_url
    click_on "Edit", match: :first

    fill_in "Desc text", with: @oral_arg.desc_text
    fill_in "Header text", with: @oral_arg.header_text
    fill_in "Link url", with: @oral_arg.link_url
    click_on "Update Oral arg"

    assert_text "Oral arg was successfully updated"
    click_on "Back"
  end

  test "destroying a Oral arg" do
    visit oral_args_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Oral arg was successfully destroyed"
  end
end
