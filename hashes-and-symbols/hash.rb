paris = {
  "country" => "France",
  "population" => 2211000
}

# CRUD
# Read
paris["country"] # => "France"

# Create
paris["mayor"] = "Anne Hidalgo"

# Update
paris["mayor"] = "Taneshwar"

# Destroy
paris.delete("mayor")

# Complex hash eg.:
# students = {
#   "Ben" => {
#     "age" => 23,
#     "country" => "Australia",
#     "friends" => []
#   },
#   "Chloe" => {
#     "age" => 23
#   }
# }


# students["Ben"]["country"] # => "Australia"

paris.each do |key, value|
  p "Paris' #{key} is #{value}"
end
# "Paris' country is France"
# "Paris' population is 2211000"
