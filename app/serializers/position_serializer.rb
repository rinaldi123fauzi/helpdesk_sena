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
class PositionSerializer < ActiveModel::Serializer
  attributes :id, :punya_pm
  has_one :user
  has_one :role
  has_one :work_unit
end
