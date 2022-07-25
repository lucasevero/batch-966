# PSEUDOCODE
store = {
  "kiwi" => {
    price: 1.25,
    amount: 5
  },
  "banana" => {
    price: 0.5,
    amount: 4
  },
  "mango" => {
    price: 4,
    amount: 1
  },
  "asparagus" => {
    price: 9,
    amount: 5
  }
}

total = 0
cart = {}

# 1. Welcome the user to the store
puts "> --------------------"
puts "> Welcome to Instacart"
puts "> --------------------"
# 2. Display the list of items, with their prices
puts "> In our store today:"
store.each do |key, value|
  puts "> #{key}: #{value[:price]}$ (avaiable: #{value[:amount]})"
end

# 3. Ask for an item
puts "> --------------------"
puts "> Which item? (or 'quit' to checkout)"

# 4. Take the user input
item = gets.chomp

until item == "quit"
  # 5. Check if the item is in the store
  if store.key?(item)
    # 5.1. If it is, ask for how many units TODO
    puts "> How many?"
    amount = gets.chomp.to_i
    if amount <= store[item][:amount]
      store[item][:amount] -= amount
      cart[item] = amount
    else
      puts "> Sorry, there are only #{store[item][:amount]} #{item}s left.."
    end
    # 5.2. Add the item to the cart TODO
    # 5.3. Add the price to the total
    # total += store[item]
  else
    # 5.2. If it's not, inform the user
    puts "> Sorry, we don't have #{item} today.."
  end
  # 6. Keep asking until the input is 'quit'
  puts "> Which item? (or 'quit' to checkout)"
  item = gets.chomp
end

# 7. When 'quit', display the BILL
  # 7.1 With the details about each item TODO
puts "> -------BILL---------"
cart.each do |item, amount|
  price = store[item][:price]
  item_price = amount * price
  total += item_price
  puts "> #{item}: #{amount} X #{price}€ = #{item_price}€"
end

puts "> TOTAL: #{total}$"
puts "> --------------------"


















# Option using symbols:
# store = {
#   banana: 1,
#   kiwi: 1.5,
#   bread: 2,
#   beans: 4
# }


# ARRAYS
# array = [1, 2, 3]
      #  0  1  2
# array.each do |number|
#   puts number
# end
# array << 4

# # HASHES
# ages = { "Luca" => 23,  "Chloe" => 25,  "Rylan" => 32 }
# ages.each do |key, value|
#   puts "#{value} is on position #{key}"
# end
# ages["Luca"]
# ages["Chris"] = 30
# ages["Euclides"]
