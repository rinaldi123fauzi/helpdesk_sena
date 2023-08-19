# == Schema Information
#
# Table name: sender_emails
#
#  id         :bigint           not null, primary key
#  email_to   :string
#  parent_id  :integer
#  token      :integer
#  status     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class SenderEmail < ApplicationRecord
  def send
    checkSender = SenderEmail.where(status: 'not-yet-sent')
    checkSender.each do |data|
      tickets = Ticket.where(id: data.parent_id)
      if tickets.count == 1
        ticket = tickets.first
        UserMailer.approval_confirmation(data.email_to,ticket,data.token).deliver_now
      end
      sender_email = SenderEmail.find_by(id: data.id)
      sender_email.status = "sent"
      sender_email.save
    end
  end
end
