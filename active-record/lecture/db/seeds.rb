require 'faker'

# This is where you can create initial data for your app.
puts "Cleaning the database..."
Restaurant.destroy_all

puts 'Creating 10 restaurants...'

10.times do
  restaurant = Restaurant.new(
    name: "#{Faker::Movie.title}'s Place",
    address: Faker::Address.full_address,
    rating: rand(1..5)
  )
  restaurant.save
end

puts 'Finished!'
