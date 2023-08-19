# == Schema Information
#
# Table name: tx_errors
#
#  id          :bigint           not null, primary key
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  controller  :string
#  action      :string
#
require 'test_helper'

class TxErrorTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
