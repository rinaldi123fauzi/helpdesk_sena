# == Schema Information
#
# Table name: areas
#
#  id         :bigint           not null, primary key
#  nama       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Area < ApplicationRecord
    has_many :ticket
end
