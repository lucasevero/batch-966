# Q04
def multiply(x, y) # The method multiply is being defined. It takes two PARAMETERS - x and y
  return x * y     # returns the result of the multiplication between x and y
end                # END

puts multiply(5, 8) # We are CALLING the method, with the ARGUMENTS 5 and 8. We are also displaying the result in the terminal with `puts`

# Q05
# FLOW:
  # IF
  # ELSE
  # ELSIF
  # CASE
  # UNLESS
age = 23
if age >= 18
  puts "You can vote"
else
  puts "Not yet kid"
end

# Q06
grades = [19, 8, 11, 15, 13]

# USING EACH
# AVERAGE
# The sum of everything divided by the amount of things
sum = 0
grades.each do |grade|
  # sum = sum + grade
  sum += grade
end
# sum.fdiv(grades.lenght)
sum.to_f / grades.lenght

# Q7
def capitalize_name(first_name, last_name)
  # CONCATENATION
  first_name.capitalize!
  last_name.capitalize!
  return first_name + " " + last_name

  # INTERPOLATION
  return "#{first_name.capitalize} #{last_name.capitalize}"
end

# Q9
fruits = ["banana", "peach", "watermelon", "orange"]
# INDEXES  0         1          2            3

# Print out "peach" from the fruits array in the terminal
fruits[1]

# Add an "apple" to the fruits array
fruits << "apple"
fruits.push("apple")
fruits.unshift("apple")
fruits.append("apple")
fruits.prepend("apple")

# Replace "watermelon" by "pear"
fruits[2] = "pear"

# Delete "orange"
fruits.delete("orange")
fruits.delete_at(3)

# Q10
city = { name: "Paris", population: 2_000_000 }

# Print out the name of the city
city[:name]
# Add the Eiffel Tower to city with the `:monument` key
city[:monument] = "Eiffel Tower"
# Update the population to 2000001
city[:population] = 2_000_001
# What will the following code return?
city[:mayor] # => Will return new

# Q11
students = [ [ "john", 28 ], [ "mary", 25 ], [ "paul", 21 ] ]
students.map do |arr|
  { name: arr[0], age: arr[1] }
end

[
  {
    name: "john",
    age: 28
  },
  {
    name: "mary",
    age: 25
  },
  {
    name: "paul",
    age: 21
  }
]
