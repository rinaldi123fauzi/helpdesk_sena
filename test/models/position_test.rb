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
require 'test_helper'

class PositionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
