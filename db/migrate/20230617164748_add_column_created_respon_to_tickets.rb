class AddColumnCreatedResponToTickets < ActiveRecord::Migration[5.2]
  def change
    add_column :tickets, :created_respon, :timestamp
  end
end
