class ChangeDatatypeBerjenjangToSubCategories < ActiveRecord::Migration[5.2]
  def change
    remove_column :sub_categories, :berjenjang
    add_column :sub_categories, :approval_berjenjang, :boolean
  end
end
