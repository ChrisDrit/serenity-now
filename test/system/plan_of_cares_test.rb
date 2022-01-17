require "application_system_test_case"

class PlanOfCaresTest < ApplicationSystemTestCase
  setup do
    @plan_of_care = plan_of_cares(:one)
  end

  test "visiting the index" do
    visit plan_of_cares_url
    assert_selector "h1", text: "Plan of cares"
  end

  test "should create plan of care" do
    visit plan_of_cares_url
    click_on "New plan of care"

    fill_in "Description", with: @plan_of_care.description
    click_on "Create Plan of care"

    assert_text "Plan of care was successfully created"
    click_on "Back"
  end

  test "should update Plan of care" do
    visit plan_of_care_url(@plan_of_care)
    click_on "Edit this plan of care", match: :first

    fill_in "Description", with: @plan_of_care.description
    click_on "Update Plan of care"

    assert_text "Plan of care was successfully updated"
    click_on "Back"
  end

  test "should destroy Plan of care" do
    visit plan_of_care_url(@plan_of_care)
    click_on "Destroy this plan of care", match: :first

    assert_text "Plan of care was successfully destroyed"
  end
end
