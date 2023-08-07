require "application_system_test_case"

class TxErrorsTest < ApplicationSystemTestCase
  setup do
    @tx_error = tx_errors(:one)
  end

  test "visiting the index" do
    visit tx_errors_url
    assert_selector "h1", text: "Tx Errors"
  end

  test "creating a Tx error" do
    visit tx_errors_url
    click_on "New Tx Error"

    fill_in "Description", with: @tx_error.description
    click_on "Create Tx error"

    assert_text "Tx error was successfully created"
    click_on "Back"
  end

  test "updating a Tx error" do
    visit tx_errors_url
    click_on "Edit", match: :first

    fill_in "Description", with: @tx_error.description
    click_on "Update Tx error"

    assert_text "Tx error was successfully updated"
    click_on "Back"
  end

  test "destroying a Tx error" do
    visit tx_errors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tx error was successfully destroyed"
  end
end
