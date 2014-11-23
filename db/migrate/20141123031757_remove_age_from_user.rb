class RemoveAgeFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :age, :string
  end
end
