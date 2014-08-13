# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Action.create(name: "sendmail", id: 1)
Action.create(name: "sendsms", id: 2)

Channel.create(name: "Random Number Generator", id: 1)
Channel.create(name: "Dropbox", id: 1)

Trigger.create(name: "Files Changed", channel_id: 2 )
Trigger.create(name: "Value Comparison", channel_id: 1 )


