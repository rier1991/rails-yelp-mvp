# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# db/seeds.rb
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'The Dovetail',
    address:      '9-10 Jerusalem Passage, Farringdon, London EC1V 4JP',
    phone_number:        '02074907321',
    category:     'belgian'
  },
  {
    name:         'Pizza East',
    address:      '56A Shoreditch High St, London E1 6PQ',
    phone_number:        '02075743919',
    category:     'italian'
  },
  {
    name:         'Min Jiang',
    address:      '2-24 Kensington High St, Kensington, London W8 4PT',
    phone_number:        '02073611988',
    category:     'chinese'
  },
  {
    name:         'Dinings',
    address:      '22 Harcourt St, Marylebone, London W1H 4HH',
    phone_number:        '02077230666',
    category:     'japanese'
  },
  {
    name:         'Clos Maggiore',
    address:      '33 King St, Covent Garden, London WC2E 8JD',
    phone_number:        '02073799696',
    category:     'french'
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
