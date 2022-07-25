require_relative "calculator"

# PSEUDOCODE
# 1. Ask the user for a first number
# 2. Get the input
# 3. Ask the user for a second number
# 4. Get the input
# 5. Ask the user for a operator ["+", "-", "*", "/"]
# 6. Calculate it
  # 6.1. If the user asks for "+", then sum the numbers
  # 6.2. If the user asks for "-", then subtract the numbers
  # 6.3. If the user asks for "*", then multiply the numbers
  # 6.4. If the user asks for "/", then divide the numbers
# 7. Display the result to the user
# 8. Ask the user if they want to calculate again
# 9. Keep calculatin UNTIL their ansswer is "no"


run = "y"

until run == "n"
  puts "Please enter a number"
  first_number = gets.chomp.to_i

  puts "Please enter the second number"
  second_number = gets.chomp.to_i

  puts "Please, choose the operation [+, -, *, /]"
  operator = gets.chomp

  until ["+", "-", "*", "/"].include?(operator)
    puts "Pleas enter a valid operator [+, -, *, /]"
    operator = gets.chomp
  end

  result = calculator(first_number, second_number, operator)

  puts "Result: #{result}"

  puts "Do you want to calculate again? [y, n]"
  run = gets.chomp
end



# # UNTIL
# puts "Tell me to stop"
# input = gets.chomp

# until input == "stop"
#   puts "Tell me to stop"
#   input = gets.chomp
# end
