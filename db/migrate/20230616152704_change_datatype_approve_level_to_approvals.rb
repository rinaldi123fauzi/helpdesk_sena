class ChangeDatatypeApproveLevelToApprovals < ActiveRecord::Migration[5.2]
  def change
    change_column :approvals, :approve_level, :string
  end
end
