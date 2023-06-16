class RenameColumnPriorityToBerjenjangToSubCategories < ActiveRecord::Migration[5.2]
  def change
    rename_column :sub_categories, :priority, :berjenjang
  end
end
