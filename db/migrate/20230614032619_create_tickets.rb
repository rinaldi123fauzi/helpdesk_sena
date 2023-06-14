class CreateTickets < ActiveRecord::Migration[5.2]
  def change
    create_table :tickets do |t|
      t.references :category, foreign_key: true
      t.references :sub_category, foreign_key: true
      t.references :work_unit, foreign_key: true
      t.string :issued_by
      t.text :description

      t.timestamps
    end
  end
end
