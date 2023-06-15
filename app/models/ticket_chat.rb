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
class TicketChat < ApplicationRecord
end
