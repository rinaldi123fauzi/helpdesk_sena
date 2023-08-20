class SenderEmailWorker
  @queue = :my_queue

  def self.perform
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