require "application_system_test_case"

class SlasTest < ApplicationSystemTestCase
  setup do
    @sla = slas(:one)
  end

  test "visiting the index" do
    visit slas_url
    assert_selector "h1", text: "Slas"
  end

  test "creating a Sla" do
    visit slas_url
    click_on "New Sla"

    fill_in "Category", with: @sla.category_id
    fill_in "Period", with: @sla.period
    check "Status" if @sla.status
    click_on "Create Sla"

    assert_text "Sla was successfully created"
    click_on "Back"
  end

  test "updating a Sla" do
    visit slas_url
    click_on "Edit", match: :first

    fill_in "Category", with: @sla.category_id
    fill_in "Period", with: @sla.period
    check "Status" if @sla.status
    click_on "Update Sla"

    assert_text "Sla was successfully updated"
    click_on "Back"
  end

  test "destroying a Sla" do
    visit slas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sla was successfully destroyed"
  end
end
