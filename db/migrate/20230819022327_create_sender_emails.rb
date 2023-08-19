class CreateSenderEmails < ActiveRecord::Migration[5.2]
  def change
    create_table :sender_emails do |t|
      t.string :email_to
      t.integer :parent_id
      t.integer :token
      t.string :status

      t.timestamps
    end
  end
end
