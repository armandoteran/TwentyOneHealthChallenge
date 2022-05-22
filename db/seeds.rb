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
puts 'The states have been created!'

puts 'Deleting Users ...'
User.destroy_all
puts 'creating users'
3.times do
  User.create(
    fullname: "#{Faker::Name.female_first_name} #{Faker::Name.last_name}",
    email: Faker::Internet.email,
    date_of_birth: Faker::Date.between(from: '2000-01-01', to: '2009-01-01'),
    password: '123456',
    state_id: State.first.id
  )
end
puts 'The users have been created!'
