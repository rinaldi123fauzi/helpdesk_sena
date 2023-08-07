class CreateTxErrors < ActiveRecord::Migration[5.2]
  def change
    create_table :tx_errors do |t|
      t.string :description

      t.timestamps
    end
  end
end
