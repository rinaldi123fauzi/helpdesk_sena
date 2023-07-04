class AddColumnTemplateTicketToSubCategories < ActiveRecord::Migration[5.2]
  def change
    add_column :sub_categories, :template_ticket, :string
  end
end
