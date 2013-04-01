# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


#Seeding Data into DB

  r1 = Restaurant.create(
    capacity: 50,
    city: "Toronto",
    cuisine: "French",
    name: "Chez Awesome",
    rating: 5,
    website: "www.google.com"
    )

  r2 = Restaurant.create(
    capacity: 20,
    city: "Toronto",
    cuisine: "French",
    name: "Gruyere",
    rating: 3,
    website: "www.google.com"
    )

  r3 = Restaurant.create(
    capacity: 50,
    city: "San Francisco",
    cuisine: "Mexican",
    name: "Burrito Boys",
    rating: 4,
    website: "www.google.com"
    )

  r4 = Restaurant.create(
    capacity: 50,
    city: "San Francisco",
    cuisine: "Mexican",
    name: "Legit",
    rating: 5,
    website: "www.google.com"
    )

  r5 = Restaurant.create(
    capacity: 50,
    city: "Toronto",
    cuisine: "Thai",
    name: "Osha Thai",
    rating: 4,
    website: "www.google.com"
    )