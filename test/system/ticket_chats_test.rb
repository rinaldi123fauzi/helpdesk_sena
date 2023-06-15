require "application_system_test_case"

class TicketChatsTest < ApplicationSystemTestCase
  setup do
    @ticket_chat = ticket_chats(:one)
  end

  test "visiting the index" do
    visit ticket_chats_url
    assert_selector "h1", text: "Ticket Chats"
  end

  test "creating a Ticket chat" do
    visit ticket_chats_url
    click_on "New Ticket Chat"

    fill_in "Description", with: @ticket_chat.description
    fill_in "Receiver", with: @ticket_chat.receiver
    fill_in "Sender", with: @ticket_chat.sender
    click_on "Create Ticket chat"

    assert_text "Ticket chat was successfully created"
    click_on "Back"
  end

  test "updating a Ticket chat" do
    visit ticket_chats_url
    click_on "Edit", match: :first

    fill_in "Description", with: @ticket_chat.description
    fill_in "Receiver", with: @ticket_chat.receiver
    fill_in "Sender", with: @ticket_chat.sender
    click_on "Update Ticket chat"

    assert_text "Ticket chat was successfully updated"
    click_on "Back"
  end

  test "destroying a Ticket chat" do
    visit ticket_chats_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ticket chat was successfully destroyed"
  end
end
