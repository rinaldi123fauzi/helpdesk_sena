class AddColumnApprovalByToTickets < ActiveRecord::Migration[5.2]
  def change
    add_column :tickets, :approval_by, :string
  end
end
