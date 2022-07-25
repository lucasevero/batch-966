# PSEUDOCODE
# 1. Welcomes to user to the race!
# 2. Print the list of horses
# 3. Ask the user to chose a horse (and save it in a variable)
# 4. Run the race
# 4.1. Make one of the horses win (randomly get one of the horses)
# 5. Check if the user won
# 6. Display the result!

# OPTIONAL:
# - In the beginning user will have 100$
# - Each bet will cost 10$
# - Winning rewards 50$
# - Display the balance each time you show the result

horses = ["Alípio", "Horace Horsecollar", "BoJack", "Pegasus", "Secretariat", "Princess", "Angus", "Maximus"]

run = ""
balance = 100

while run != "n"
  puts "Welcome to the race"
  puts "Who is going to win?"
  horses.each_with_index do |horse, index|
    puts "#{index + 1} - #{horse}"
  end
  puts "What's your bet [enter the index]"
  bet = gets.chomp.to_i

  puts "And the winner is....."
  winner = horses.sample
  puts "#{winner}!"

  if winner == horses[bet - 1]
    # balance = balance + 50
    balance += 50
    puts "Congrats! You won! You now have #{balance}$"
  else
    # balance = balance - 10
    balance -= 10
    puts "Boooh you lose... You now have #{balance}$"
  end

  if balance == 0
    puts "You ran out of money! Exiting..."
    break
  end

  puts "Do you want to play again? [y, n]"
  run = gets.chomp
end
