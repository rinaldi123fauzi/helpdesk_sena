# == Schema Information
#
# Table name: approvals
#
#  id            :bigint           not null, primary key
#  loan_id       :bigint
#  approve_by    :string
#  approve_level :string
#  date          :datetime
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  ticket_id     :bigint
#
require 'test_helper'

class ApprovalTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
