require 'test_helper'

class TicketChatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ticket_chat = ticket_chats(:one)
  end

  test "should get index" do
    get ticket_chats_url
    assert_response :success
  end

  test "should get new" do
    get new_ticket_chat_url
    assert_response :success
  end

  test "should create ticket_chat" do
    assert_difference('TicketChat.count') do
      post ticket_chats_url, params: { ticket_chat: { description: @ticket_chat.description, receiver: @ticket_chat.receiver, sender: @ticket_chat.sender } }
    end

    assert_redirected_to ticket_chat_url(TicketChat.last)
  end

  test "should show ticket_chat" do
    get ticket_chat_url(@ticket_chat)
    assert_response :success
  end

  test "should get edit" do
    get edit_ticket_chat_url(@ticket_chat)
    assert_response :success
  end

  test "should update ticket_chat" do
    patch ticket_chat_url(@ticket_chat), params: { ticket_chat: { description: @ticket_chat.description, receiver: @ticket_chat.receiver, sender: @ticket_chat.sender } }
    assert_redirected_to ticket_chat_url(@ticket_chat)
  end

  test "should destroy ticket_chat" do
    assert_difference('TicketChat.count', -1) do
      delete ticket_chat_url(@ticket_chat)
    end

    assert_redirected_to ticket_chats_url
  end
end
