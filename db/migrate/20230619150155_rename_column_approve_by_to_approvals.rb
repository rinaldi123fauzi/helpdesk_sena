class RenameColumnApproveByToApprovals < ActiveRecord::Migration[5.2]
  def change
    rename_column :approvals, :approve_by, :issued_by
  end
end
