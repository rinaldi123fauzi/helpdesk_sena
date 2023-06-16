class AddColumnTicketIdToApprovals < ActiveRecord::Migration[5.2]
  def change
    add_reference :approvals, :ticket, foreign_key: true
  end
end
