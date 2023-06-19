class AddColumnClosedResponToTickets < ActiveRecord::Migration[5.2]
  def change
    add_column :tickets, :closed_respon, :timestamp
  end
end
