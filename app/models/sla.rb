# == Schema Information
#
# Table name: slas
#
#  id          :bigint           not null, primary key
#  category_id :bigint
#  period      :integer
#  status      :boolean
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Sla < ApplicationRecord
  belongs_to :category
end
