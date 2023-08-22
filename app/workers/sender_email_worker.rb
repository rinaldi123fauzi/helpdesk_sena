class SenderEmailWorker
  @queue = :my_queue

  def self.perform(sender_id)
    checkSender = SenderEmail.where(id: sender_id, status: 'not-yet-sent')
    sender = checkSender.last
    tickets = Ticket.where(id: sender.parent_id)
    if tickets.count == 1
      ticket = tickets.first
      UserMailer.approval_confirmation(sender.email_to,ticket,sender.token).deliver_now
    end
    sender_email = SenderEmail.find_by(id: sender.id)
    sender_email.status = "sent"
    sender_email.save
  end
end