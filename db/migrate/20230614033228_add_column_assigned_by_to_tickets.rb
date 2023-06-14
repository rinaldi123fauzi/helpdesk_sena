class AddColumnAssignedByToTickets < ActiveRecord::Migration[5.2]
  def change
    add_column :tickets, :assigned_by, :string
  end
end
