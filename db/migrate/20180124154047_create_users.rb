class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.integer :userid
      t.string :username
      t.text :comment

      t.timestamps
    end
  end
end
