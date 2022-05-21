# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Deleting States ...'
State.destroy_all
puts 'States have been deleted!'
puts 'Creating states ...'
State.create(full_name: 'Test')
puts 'States have been created!'
