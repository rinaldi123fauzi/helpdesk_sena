class AddColumnAreaIdToTickets < ActiveRecord::Migration[5.2]
  def change
    add_reference :tickets, :area, foreign_key: true
  end
end
