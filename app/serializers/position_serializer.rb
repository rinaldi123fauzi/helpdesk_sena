class PositionSerializer < ActiveModel::Serializer
  attributes :id, :punya_pm
  has_one :user
  has_one :role
  has_one :work_unit
end
