class CreateGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :groups do |t|
      t.string :group_id
      t.int[] :group_member
      t.timestamps
    end
  end
end
