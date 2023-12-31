# == Schema Information
#
# Table name: categories
#
#  id            :bigint           not null, primary key
#  nama_kategori :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
class Category < ApplicationRecord
    has_many :sub_category, dependent: :destroy
    has_many :ticket, dependent: :destroy
    has_many :sla, dependent: :destroy
end
