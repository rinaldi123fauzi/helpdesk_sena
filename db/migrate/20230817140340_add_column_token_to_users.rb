class AddColumnTokenToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :token, :integer
  end
end
