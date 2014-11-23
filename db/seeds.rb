# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#user = CreateAdminService.new.call
#puts 'CREATED ADMIN USER: ' << user.Email

#Make Users
%w(Nadler Hilfinger Denero Sherlock Watsom).each do |name|
  User.create! name: name, gender: "male", age: rand(20..40), email: name+"@gmail.com", password: "password"
end

#Make Groups
%w(Nerd Geek Slash Aoyi).each do |name|
  Group.create! name: name, member_count: 0, member_limit: rand(2..20), is_in_game:false
end


