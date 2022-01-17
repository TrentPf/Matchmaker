# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

## TOURNAMENTS

tourn1 = Tournament.create({
  name: "Tournament 1",
  game: "League of Legends"
})

tourn2 = Tournament.create({
  name: "Tournament 2",
  game: "Super Smash Bros Ultimate"
})

tourn3 = Tournament.create({
  name: "Tournament 3",
  game: "Super Smash Bros Ultimate"
})