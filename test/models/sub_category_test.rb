# == Schema Information
#
# Table name: sub_categories
#
#  id                :bigint           not null, primary key
#  category_id       :bigint
#  nama_sub_kategori :string
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  priority          :string
#
require 'test_helper'

class SubCategoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
