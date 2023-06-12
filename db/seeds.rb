# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Destroying restaurants..."
Restaurant.destroy_all
puts "Creating restaurants..."

Restaurant.create!(
  name: "Le Dindon en Laisse",
  address: "18 Rue Beautreillis, 75004 Paris, France"
)
Restaurant.create!(
  name: "Neuf et Voisins",
  address: "Van Arteveldestraat 1, 1000 Brussels, Belgium"
)
Restaurant.create!(
  name: "À l'Endroit",
  address: "9 Rue du Tunnel, 75019 Paris"
)
Restaurant.create!(
  name: "SYMPHONY | Restaurant Italien",
  address: "25 Sente des Dorées, 75019 Paris"
)
Restaurant.create!(
  name: "La Voile Bleue Le Havre",
  address: "58 Rue des Sauveteurs, 76600 Le Havre"
)
puts "Finished!"
