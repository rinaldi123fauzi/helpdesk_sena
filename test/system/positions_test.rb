require "application_system_test_case"

class PositionsTest < ApplicationSystemTestCase
  setup do
    @position = positions(:one)
  end

  test "visiting the index" do
    visit positions_url
    assert_selector "h1", text: "Positions"
  end

  test "creating a Position" do
    visit positions_url
    click_on "New Position"

    check "Punya pm" if @position.punya_pm
    fill_in "Role", with: @position.role_id
    fill_in "User", with: @position.user_id
    fill_in "Work unit", with: @position.work_unit_id
    click_on "Create Position"

    assert_text "Position was successfully created"
    click_on "Back"
  end

  test "updating a Position" do
    visit positions_url
    click_on "Edit", match: :first

    check "Punya pm" if @position.punya_pm
    fill_in "Role", with: @position.role_id
    fill_in "User", with: @position.user_id
    fill_in "Work unit", with: @position.work_unit_id
    click_on "Update Position"

    assert_text "Position was successfully updated"
    click_on "Back"
  end

  test "destroying a Position" do
    visit positions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Position was successfully destroyed"
  end
end
