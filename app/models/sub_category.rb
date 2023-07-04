# == Schema Information
#
# Table name: sub_categories
#
#  id                  :bigint           not null, primary key
#  category_id         :bigint
#  nama_sub_kategori   :string
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  approval_berjenjang :string
#  template_ticket     :string
#
class SubCategory < ApplicationRecord
  belongs_to :category
  has_many :ticket, dependent: :destroy
  validates :approval_berjenjang, inclusion: { in: %w(medium low none), allow_nil: true, message: "%{value} bukan status yang benar" }
end
