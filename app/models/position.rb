# == Schema Information
#
# Table name: positions
#
#  id           :bigint           not null, primary key
#  user_id      :bigint
#  role_id      :bigint
#  work_unit_id :bigint
#  punya_pm     :boolean
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class Position < ApplicationRecord
  belongs_to :user
  belongs_to :role
  belongs_to :work_unit
end
