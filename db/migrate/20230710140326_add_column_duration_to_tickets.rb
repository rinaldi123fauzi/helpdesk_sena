class AddColumnDurationToTickets < ActiveRecord::Migration[5.2]
  def change
    add_column :tickets, :duration, :decimal
  end
end
