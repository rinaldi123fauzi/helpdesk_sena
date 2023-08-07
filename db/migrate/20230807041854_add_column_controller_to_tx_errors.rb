class AddColumnControllerToTxErrors < ActiveRecord::Migration[5.2]
  def change
    add_column :tx_errors, :controller, :string
  end
end
