class AddIsInGameToGroup < ActiveRecord::Migration
  def change
    add_column :groups, :is_in_game, :boolean
  end
end
