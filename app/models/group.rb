class Group < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true, length: 
    { 
      minimum: 1, 
      maximum: 10,
      tokenizer: lambda { |str| str.split(/\s+/) },
      too_short: "must have at least %{count} words",
      too_long: "must have at most %{count} words"
    };
  validates :member_limit, presence:true
end
