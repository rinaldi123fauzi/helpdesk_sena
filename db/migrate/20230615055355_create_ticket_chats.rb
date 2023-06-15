class CreateTicketChats < ActiveRecord::Migration[5.2]
  def change
    create_table :ticket_chats do |t|
      t.string :sender
      t.string :receiver
      t.string :description

      t.timestamps
    end
  end
end
