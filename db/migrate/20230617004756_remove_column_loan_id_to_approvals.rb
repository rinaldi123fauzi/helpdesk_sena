class RemoveColumnLoanIdToApprovals < ActiveRecord::Migration[5.2]
  def change
    remove_column :approvals, :loan_id
  end
end
