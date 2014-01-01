# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Infomessage.create(text: "Message 1", display_time: 10, priority: 1)
Infomessage.create(text: "Message 5", display_time: 11, priority: 3)
Infomessage.create(text: "Message 3", display_time: 12, priority: 2)
Infomessage.create(text: "Message 6", display_time: 13, priority: 5)
Infomessage.create(text: "Message 2", display_time: 14, priority: 1)
Infomessage.create(text: "Message 4", display_time: 15, priority: 2)