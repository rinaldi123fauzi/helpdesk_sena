class CreateSubCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :sub_categories do |t|
      t.references :category, foreign_key: true
      t.string :nama_sub_kategori

      t.timestamps
    end
  end
end
