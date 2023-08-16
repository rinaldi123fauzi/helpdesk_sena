class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.approval_confirmation.subject
  #
  def approval_confirmation(user)
    @greeting = "Hi"
    @user = user

    mail to: @user, subject: "Test"
  end
end
