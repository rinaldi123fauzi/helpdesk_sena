# == Schema Information
#
# Table name: tickets
#
#  id              :bigint           not null, primary key
#  category_id     :bigint
#  sub_category_id :bigint
#  work_unit_id    :bigint
#  issued_by       :string
#  description     :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  area_id         :bigint
#  status          :string
#  assigned_by     :string
#  no_ticket       :string
#  approval_by     :string
#  created_respon  :datetime
#
class Ticket < ApplicationRecord
  belongs_to :category
  belongs_to :sub_category
  belongs_to :work_unit
  belongs_to :area
  has_many :approval, dependent: :destroy

  has_many_attached :file_ticket
  validates :status, inclusion: { in: %w(inprogress approval1 open closed created overdue rejected), allow_nil: true, message: "%{value} bukan status yang benar" }
end
