require 'test_helper'

class SenderEmailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sender_email = sender_emails(:one)
  end

  test "should get index" do
    get sender_emails_url
    assert_response :success
  end

  test "should get new" do
    get new_sender_email_url
    assert_response :success
  end

  test "should create sender_email" do
    assert_difference('SenderEmail.count') do
      post sender_emails_url, params: { sender_email: { email_to: @sender_email.email_to, parent_id: @sender_email.parent_id, status: @sender_email.status, token: @sender_email.token } }
    end

    assert_redirected_to sender_email_url(SenderEmail.last)
  end

  test "should show sender_email" do
    get sender_email_url(@sender_email)
    assert_response :success
  end

  test "should get edit" do
    get edit_sender_email_url(@sender_email)
    assert_response :success
  end

  test "should update sender_email" do
    patch sender_email_url(@sender_email), params: { sender_email: { email_to: @sender_email.email_to, parent_id: @sender_email.parent_id, status: @sender_email.status, token: @sender_email.token } }
    assert_redirected_to sender_email_url(@sender_email)
  end

  test "should destroy sender_email" do
    assert_difference('SenderEmail.count', -1) do
      delete sender_email_url(@sender_email)
    end

    assert_redirected_to sender_emails_url
  end
end
