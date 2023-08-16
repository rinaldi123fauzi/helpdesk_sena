require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
  test "approval_confirmation" do
    mail = UserMailer.approval_confirmation
    assert_equal "Approval confirmation", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
