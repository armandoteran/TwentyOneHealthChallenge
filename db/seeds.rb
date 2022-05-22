# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require_relative '../config/initializers/constants'

puts 'Deleting States ...'
State.destroy_all
puts 'States have been deleted!'

STATES.each do |s|
  puts 'Creating states ...'
  State.create(
    full_name: s[0],
    abbreviation: s[1],
    service_offered: s[2],
    minimum_age: s[3]
  )
end
puts 'States have been created!'
