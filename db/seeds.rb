# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Shelter.destroy_all
Pet.destroy_all

shelter_1 = Shelter.create(
  name: 'Shelter of Dog',
  address: '123 main street',
  city: 'Denver',
  state: 'CO',
  zip: '80234'
)

shelter_2 = Shelter.create(
  name: 'Shelter of Dog',
  address: '123 main street',
  city: 'Denver',
  state: 'CO',
  zip: '80234'
)

shelter_3 = Shelter.create(
  name: 'Shelter of Dog',
  address: '123 main street',
  city: 'Denver',
  state: 'CO',
  zip: '80234'
)

shelter_4 = Shelter.create(
  name: 'Shelter of Dog',
  address: '123 main street',
  city: 'Denver',
  state: 'CO',
  zip: '80234'
)

shelter_5 = Shelter.create(
  name: 'Shelter of Dog',
  address: '123 main street',
  city: 'Denver',
  state: 'CO',
  zip: '80234'
)
