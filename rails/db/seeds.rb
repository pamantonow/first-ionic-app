# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Track.create(name: "workout",unit: "miles", user_id: 1)
Track.create(name: "ran",unit: "kilometers", user_id: 1)
Track.create(name: "abs",unit: "sets", user_id: 1)
Track.create(name: "push-ups",unit: "kg", user_id: 1)

 Entry.create(track_id: 1,date: DateTime.now(),note: "Ran less than yesterday", quantity: 30)