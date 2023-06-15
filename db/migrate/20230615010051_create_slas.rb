class CreateSlas < ActiveRecord::Migration[5.2]
  def change
    create_table :slas do |t|
      t.references :category, foreign_key: true
      t.integer :period
      t.boolean :status

      t.timestamps
    end
  end
end
