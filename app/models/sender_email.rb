# == Schema Information
#
# Table name: sender_emails
#
#  id         :bigint           not null, primary key
#  email_to   :string
#  parent_id  :integer
#  token      :integer
#  status     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class SenderEmail < ApplicationRecord
end
