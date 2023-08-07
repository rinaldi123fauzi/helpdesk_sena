class AddColumnActionToTxErrors < ActiveRecord::Migration[5.2]
  def change
    add_column :tx_errors, :action, :string
  end
end
