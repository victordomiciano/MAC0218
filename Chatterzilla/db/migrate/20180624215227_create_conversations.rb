class CreateConversations < ActiveRecord::Migration[5.1]
  def change
    create_table :conversations do |t|
      t.string :sender_login
      t.string :recipient_login

      t.timestamps
    end


    add_index :conversations, :sender_id
	add_index :conversations, :recipient_id
  end
end
