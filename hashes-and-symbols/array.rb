students =     [ "Peter", "Mary", "Tanesh","George", "Emma" ]
student_ages = [ 24     , 25    , 22      ,  20    ]
#  INDEXES      0         1       2          3

# "Peter is 24 years old"
# "Mary is 25 years old"

# "#{the_name_of_the_student} is #{their_age} years old!"
# "#{students[0]} is #{student_ages[0]} years old!"

students.each_with_index do |student, index|
  puts "#{student} is #{student_ages[index]} years old!"
end

# CRUD
# Create, Read, Update, Delete

# Read
students[0] # => "Peter"
student.first # => "Peter"

# Create
student.push("Vince")
students << "Luca"

# Update
students[1] = "Rylan"

# Destroy
students.delete("George")
students.delete_at(3)
students.pop
