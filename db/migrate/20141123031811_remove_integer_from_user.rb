class RemoveIntegerFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :integer, :string
  end
end
