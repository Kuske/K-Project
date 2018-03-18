class CreateMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :messages do |t|
      t.integer :message_id
      t.text :message_text
      t.integer :message_user
      t.string :message_type
      t.string :message_group_id

      t.timestamps
    end
  end
end
