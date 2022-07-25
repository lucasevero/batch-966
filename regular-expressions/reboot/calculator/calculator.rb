def calculator(first_number, second_number, operator)
  if operator == "+"
    return first_number + second_number
  elsif operator == "-"
    return first_number - second_number
  elsif operator == "*"
    return first_number * second_number
  elsif operator == "/"
    return first_number / second_number
  end
end
