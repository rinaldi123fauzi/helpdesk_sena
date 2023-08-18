class AddColumnTokenToTickets < ActiveRecord::Migration[5.2]
  def change
    add_column :tickets, :token, :integer
  end
end
