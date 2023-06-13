class RenameColumnNamaToCategories < ActiveRecord::Migration[5.2]
  def change
    rename_column :categories, :nama, :nama_kategori
  end
end
