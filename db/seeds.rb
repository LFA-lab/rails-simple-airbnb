# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# db/seeds.rb
# # Nettoyage de la base de données
puts "Cleaning database..."
Flat.destroy_all

# Ajout des enregistrements
puts "Creating flats..."

Flat.create!(
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3,
  picture_url: 'https://media.gettyimages.com/id/1293762741/fr/photo/int%C3%A9rieur-moderne-de-salle-de-vie-rendu-3d.jpg?s=612x612&w=0&k=20&c=BKixm6wq1Y6NFFF-8XllknUQvSboRmCmjn_Lm_erHmQ='
)

# Ajoutez d'autres flats
Flat.create!(
  name: 'Stylish House Close to River Thames',
  address: '5 Riverside, London SW8 1DT',
  description: 'Enjoy a stylish experience at this centrally-located place. Close to parks and the river Thames.',
  price_per_night: 90,
  number_of_guests: 4,
  picture_url: 'https://media.gettyimages.com/id/1293762741/fr/photo/int%C3%A9rieur-moderne-de-salle-de-vie-rendu-3d.jpg?s=612x612&w=0&k=20&c=BKixm6wq1Y6NFFF-8XllknUQvSboRmCmjn_Lm_erHmQ='
)
# etc.
# db/seeds.rb
puts "Flats created!"
