require "application_system_test_case"

class StdsTest < ApplicationSystemTestCase
  setup do
    @std = stds(:one)
  end

  test "visiting the index" do
    visit stds_url
    assert_selector "h1", text: "Stds"
  end

  test "creating a Std" do
    visit stds_url
    click_on "New Std"

    fill_in "Class teacher", with: @std.class_teacher
    fill_in "Division", with: @std.division
    fill_in "Name", with: @std.name
    click_on "Create Std"

    assert_text "Std was successfully created"
    click_on "Back"
  end

  test "updating a Std" do
    visit stds_url
    click_on "Edit", match: :first

    fill_in "Class teacher", with: @std.class_teacher
    fill_in "Division", with: @std.division
    fill_in "Name", with: @std.name
    click_on "Update Std"

    assert_text "Std was successfully updated"
    click_on "Back"
  end

  test "destroying a Std" do
    visit stds_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Std was successfully destroyed"
  end
end
