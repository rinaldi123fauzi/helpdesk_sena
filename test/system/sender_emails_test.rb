require "application_system_test_case"

class SenderEmailsTest < ApplicationSystemTestCase
  setup do
    @sender_email = sender_emails(:one)
  end

  test "visiting the index" do
    visit sender_emails_url
    assert_selector "h1", text: "Sender Emails"
  end

  test "creating a Sender email" do
    visit sender_emails_url
    click_on "New Sender Email"

    fill_in "Email to", with: @sender_email.email_to
    fill_in "Parent", with: @sender_email.parent_id
    fill_in "Status", with: @sender_email.status
    fill_in "Token", with: @sender_email.token
    click_on "Create Sender email"

    assert_text "Sender email was successfully created"
    click_on "Back"
  end

  test "updating a Sender email" do
    visit sender_emails_url
    click_on "Edit", match: :first

    fill_in "Email to", with: @sender_email.email_to
    fill_in "Parent", with: @sender_email.parent_id
    fill_in "Status", with: @sender_email.status
    fill_in "Token", with: @sender_email.token
    click_on "Update Sender email"

    assert_text "Sender email was successfully updated"
    click_on "Back"
  end

  test "destroying a Sender email" do
    visit sender_emails_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sender email was successfully destroyed"
  end
end
