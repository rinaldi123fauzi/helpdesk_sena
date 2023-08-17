class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.approval_confirmation.subject
  #
  def approval_confirmation(user,ticket,token)
    @greeting = "Hi"
    @user = user
    @ticket = ticket
    @token = token
    mail to: @user, subject: "Helpdesk SENA"
  end
end
