class AddColumnNoTicketToTickets < ActiveRecord::Migration[5.2]
  def change
    add_column :tickets, :no_ticket, :string
  end
end
