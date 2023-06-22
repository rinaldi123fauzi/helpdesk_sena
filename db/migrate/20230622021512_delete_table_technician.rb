class DeleteTableTechnician < ActiveRecord::Migration[5.2]
  def change
   drop_table :technicians
  end
end
