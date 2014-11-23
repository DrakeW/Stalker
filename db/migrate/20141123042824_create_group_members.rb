class CreateGroupMembers < ActiveRecord::Migration
  def change
    create_table :group_members do |t|
      t.string :name
      t.string :gender
      t.integer :age
      t.boolean :is_stalker
      t.boolean :is_admin

      t.timestamps
    end
  end
end
