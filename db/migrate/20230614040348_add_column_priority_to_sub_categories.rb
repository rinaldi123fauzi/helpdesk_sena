class AddColumnPriorityToSubCategories < ActiveRecord::Migration[5.2]
  def change
    add_column :sub_categories, :priority, :string
  end
end
