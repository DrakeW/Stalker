class Group < ActiveRecord::Base
  has_many :group_members

  validates :name, presence: true, uniqueness: true, length: 
    { 
      minimum: 1, 
      maximum: 10,
      tokenizer: lambda { |str| str.split(/\s+/) },
      too_short: "must have at least %{count} words",
      too_long: "must have at most %{count} words"
    };
  validates :member_limit, presence:true, numericality:{
    greater_than_or_equal_to: 2,
    less_than_or_equal_to: 20
  };
end
