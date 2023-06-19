class AddColumnInprogressResponToTickets < ActiveRecord::Migration[5.2]
  def change
    add_column :tickets, :inprogress_respon, :timestamp
  end
end
