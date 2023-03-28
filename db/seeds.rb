# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Usr.destroy_all
puts "start seed"


Destnation.create([
{ name: "Sydney Opera House", image: "https://www.sydneyoperahouse.com/content/dam/images/venues/sydney-opera-house/sydney-opera-house-creative-learning-indigenous-programs-2018.jpg", location: "Sydney, Australia", description: "One of the most recognizable landmarks in the world, the Sydney Opera House is a masterpiece of modern architecture and engineering.", price: "$50" },
{name: "Malindi", image: " xyz", location: "description", description: "travel safe", price: "1000"},
{ name: "Eiffel Tower", image: "https://www.toureiffel.paris/sites/default/files/styles/1200x630/public/actualite/image_principale/illuminations_28_septembre_2017_1.png?itok=LXq3tBxH", location: "Paris, France", description: "The Eiffel Tower is a wrought-iron lattice tower on the Champ de Mars in Paris, France. It is named after the engineer Gustave Eiffel, whose company designed and built the tower.", price: "$75" },
{ name: "Machu Picchu", image: "https://media.tacdn.com/media/attractions-splice-spp-674x446/07/6e/cb/c4.jpg", location: "Cusco Region, Peru", description: "Machu Picchu is a 15th-century Inca citadel situated on a mountain ridge 2,430 metres above sea level. It is located in the Cusco Region, Urubamba Province, Machupicchu District in Peru.", price: "$100" },
{ name: "The Great Wall of China", image: "https://www.chinahighlights.com/image/2019/10/ce87edc3b194414fa28a5b5c_1024x683.jpg", location: "China", description: "The Great Wall of China is a series of fortifications that were built across the historical northern borders of ancient Chinese states and Imperial China as protection against various nomadic groups from the Eurasian Steppe.", price: "$80" },
{ name: "Statue of Liberty", image: "https://www.nps.gov/stli/learn/historyculture/images/new-torch-web.jpg", location: "New York City, USA", description: "The Statue of Liberty is a colossal neoclassical sculpture on Liberty Island in New York Harbor within New York City, in the United States.", price: "$60" }
])

Usr.create(name: "guantai" , email: "jp@gmail.com", password_digest: "1234")

Destnation.create(name: "Malindi", image: " xyz", location: "description", description: "travel safe", price: "1000")

Book.create( phone: "1234", date: "2015", capacity:"5", usr_id: 1, destnation_id: 1)

puts "end seeding"

# Destination.create(name: "Malindi", image: " xyz", location: "description", description: "travel safe", price: "1000")

Usr.create(name: "guantai" , email: "jp@gmail.com", password_digest: "1234")
Destnation.create(name: "Malindi", image: " xyz", location: "description", description: "travel safe", price: "1000")
Book.create(phone: "1234", date: "2015", capacity:"5", usr_id: 1, destnation_id: 1)

