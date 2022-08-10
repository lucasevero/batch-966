require 'faker'

puts "Cleaning the database..."
Restaurant.destroy_all

puts "Creating 10 beautiful restaurants"
10.times do
  restaurant = Restaurant.new(
    name: Faker::Kpop.iii_groups,
    city: Faker::Address.city
  )
  restaurant.save
  puts "#{restaurant.name} created!"
end

puts "All done!"
