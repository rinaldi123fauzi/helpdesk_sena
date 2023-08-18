# == Schema Information
#
# Table name: approvals
#
#  id            :bigint           not null, primary key
#  issued_by     :string
#  approve_level :string
#  date          :datetime
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  ticket_id     :bigint
#  description   :string
#
class Approval < ApplicationRecord
  belongs_to :ticket

  after_create :resetToken, :resetTokenTicket

  def resetToken
    user = User.find_by(username: self.issued_by)
    user.token = nil
    user.save
  end

  def resetTokenTicket
    ticket = Ticket.find_by(id: self.ticket_id)
    ticket.token = nil
    ticket.save
  end
end
