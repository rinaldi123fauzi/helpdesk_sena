class AddColumnDescriptionToApprovals < ActiveRecord::Migration[5.2]
  def change
    add_column :approvals, :description, :string
  end
end
