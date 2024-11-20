# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Restaurant.create!([
  {
    name: 'Grillade La Bohème',
    address: '955 Rue Richelieu, La Malbaie',
    category: 'french',
  },
  {
    name: 'Restaurant Allegro',
    address: '990 Rue Richelieu, La Malbaie',
    category: 'belgian',
  },
  {
    name: 'Bistro Local 245',
    address: '245 Bd de Comporté, La Malbaie',
    category: 'french',
  },
  {
    name: 'Café De La Gare',
    address: '100 Chem. du Havre, La Malbaie',
    category: 'italian',
  },
  {
    name: 'Île Mystérieuse',
    address: '1055 Rue Richelieu, La Malbaie',
    category: 'japanese',
  }
])
