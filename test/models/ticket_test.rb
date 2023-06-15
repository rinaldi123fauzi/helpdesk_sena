# == Schema Information
#
# Table name: tickets
#
#  id              :bigint           not null, primary key
#  category_id     :bigint
#  sub_category_id :bigint
#  work_unit_id    :bigint
#  issued_by       :string
#  description     :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  area_id         :bigint
#  status          :string
#  assigned_by     :string
#  no_ticket       :string
#
require 'test_helper'

class TicketTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end