# == Schema Information
#
# Table name: ticket_chats
#
#  id          :bigint           not null, primary key
#  sender      :string
#  receiver    :string
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require 'test_helper'

class TicketChatTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
