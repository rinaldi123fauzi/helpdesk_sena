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
require 'test_helper'

class SlaTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
