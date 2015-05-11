# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'faker'


10.times do
	Task.create(name: Faker::Hacker.say_something_smart, description: Faker::Hacker.say_something_smart, start_datetime: Faker::Date.forward(90), ip_startedfrom: Faker::Internet.ip_v4_address, mac_startedfrom: Faker::Internet.mac_address)
end
