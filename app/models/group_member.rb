class GroupMember < ActiveRecord::Base
  belongs_to :group
  belongs_to :user

  validates :name, presence: true, uniqueness: true
end
