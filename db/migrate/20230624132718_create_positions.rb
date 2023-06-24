class CreatePositions < ActiveRecord::Migration[5.2]
  def change
    create_table :positions do |t|
      t.references :user, foreign_key: true
      t.references :role, foreign_key: true
      t.references :work_unit, foreign_key: true
      t.boolean :punya_pm

      t.timestamps
    end
  end
end
