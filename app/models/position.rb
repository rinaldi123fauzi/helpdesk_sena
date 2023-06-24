class Position < ApplicationRecord
  belongs_to :user
  belongs_to :role
  belongs_to :work_unit
end
