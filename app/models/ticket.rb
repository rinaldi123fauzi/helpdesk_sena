# == Schema Information
#
# Table name: tickets
#
#  id                :bigint           not null, primary key
#  category_id       :bigint
#  sub_category_id   :bigint
#  work_unit_id      :bigint
#  issued_by         :string
#  description       :text
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  area_id           :bigint
#  status            :string
#  assigned_by       :string
#  no_ticket         :string
#  approval_by       :string
#  created_respon    :datetime
#  inprogress_respon :datetime
#  closed_respon     :datetime
#  pause_respon      :boolean          default(FALSE)
#
class Ticket < ApplicationRecord
  belongs_to :category
  belongs_to :sub_category
  belongs_to :work_unit
  belongs_to :area
  has_many :approval, dependent: :destroy

  scope :user_ordering, -> { 
    order(<<-SQL)
      CASE status
      WHEN 'created' THEN 'a'
      WHEN 'inprogress' THEN 'b' 
      WHEN 'open' THEN 'c' 
      WHEN 'overdue' THEN 'c' 
      WHEN 'closed' THEN 'd' 
      WHEN 'rejected' THEN 'e' 
      ELSE 'z' 
      END ASC, 
      CASE pause_respon
      WHEN '1' THEN 'a'
      ELSE 'z'
      END ASC, 
      id DESC
    SQL
  }

  scope :urgency_ordering, -> { 
    order(<<-SQL)
      CASE status
      WHEN 'open' THEN 'a' 
      WHEN 'inprogress' THEN 'b' 
      WHEN 'overdue' THEN 'c' 
      WHEN 'closed' THEN 'd' 
      WHEN 'rejected' THEN 'e' 
      ELSE 'z' 
      END ASC, 
      CASE pause_respon
      WHEN '1' THEN 'a'
      ELSE 'z'
      END ASC, 
      id DESC
    SQL
  }

  has_many_attached :file_ticket
  validates :status, inclusion: { in: %w(inprogress approval1 approval2 approval3 open closed created overdue rejected), allow_nil: true, message: "%{value} bukan status yang benar" }

  after_create :input_approval

  def set_overdue
    ticket = Ticket.where(status: 'inprogress', pause_respon: 0)
    ticket.each do |data|
      sla = Sla.find_by_category_id_and_status(data.category_id, true)
      time_left = (Time.current - data.inprogress_respon) / 1.hours
      if time_left > sla.period
        update_ticket = Ticket.find_by_id(data.id)
        update_ticket.status = 'overdue'
        update_ticket.save
      end
    end
  end

  private
  
  def input_approval
    Approval.create!(
      :issued_by => self.issued_by,
      :approve_level => self.status,
      :description => 'create ticket',
      :ticket_id => self.id
    )
  end
end
