class AddColumnPauseResponToTickets < ActiveRecord::Migration[5.2]
  def change
    add_column :tickets, :pause_respon, :boolean
  end
end
