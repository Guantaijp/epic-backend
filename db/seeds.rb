# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Usr.destroy_all
puts "start seed"


Usr.create(name: "guantai" , email: "jp@gmail.com", password_digest: "1234")

Destnation.create(name: "Malindi", image: " xyz", location: "description", description: "travel safe", price: "1000")

Book.create( phone: "1234", date: "2015", capacity:"5", usr_id: 1, destnation_id: 1)

puts "end seeding"

# Destination.create(name: "Malindi", image: " xyz", location: "description", description: "travel safe", price: "1000")
