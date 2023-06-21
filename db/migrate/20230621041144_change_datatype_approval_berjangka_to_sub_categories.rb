class ChangeDatatypeApprovalBerjangkaToSubCategories < ActiveRecord::Migration[5.2]
  def change
   change_column :sub_categories, :approval_berjenjang, :string
  end
end
