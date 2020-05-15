# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



day1 = Day.create(title: "Dive1", date: "1/1/2020")

Log.create(location: "Fiji", current: "Strong", visibility: "Clear", depth:"10", day_id: day1.id )
Marinelife.create(content: "shark", day_id: day1.id)
