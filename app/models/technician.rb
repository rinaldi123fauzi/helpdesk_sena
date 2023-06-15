# == Schema Information
#
# Table name: technicians
#
#  id         :bigint           not null, primary key
#  user_id    :bigint
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Technician < ApplicationRecord
  belongs_to :user
end
