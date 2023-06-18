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

    def set_data
      data = Area.where(nama: 'Fauzi')
      if data.count == 0
        Area.create!(
          'nama' => "Fauzi"
        )
      end
    end
end
