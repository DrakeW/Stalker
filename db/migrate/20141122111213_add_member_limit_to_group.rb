class AddMemberLimitToGroup < ActiveRecord::Migration
  def change
    add_column :groups, :member_limit, :integer
  end
end
