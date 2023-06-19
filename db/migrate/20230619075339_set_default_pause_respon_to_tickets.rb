class SetDefaultPauseResponToTickets < ActiveRecord::Migration[5.2]
  def change
    change_column_default(:tickets, :pause_respon, false)
  end
end
