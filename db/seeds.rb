# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

#Clear existing data 
Place.destroy_all 
Entry.destroy_all 

#Add places I've been 
mexicocity = Place.new
mexicocity["name"] = "Mexico City"
mexicocity.save 

charleston = Place.new 
charleston["name"] = "Charleston"
charleston.save 

beijing = Place.new 
beijing["name"] = "Beijing"
beijing.save 

amsterdam = Place.new
amsterdam["name"] = "Amsterdam"

puts "You have been to #{Place.all.count} places, and done #{Entry.all.count} activities!"
