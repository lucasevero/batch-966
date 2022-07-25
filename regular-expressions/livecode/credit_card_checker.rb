def credit_card_checker(card)
  match_data = card.match(/^([4|5])(\d\s?){15}$/)
  if match_data
    match_data[1] == "5" ? "Valid Mastercard card" : "Valid Visa card"
  else
    "Invalid card"
  end
end

# STARTING WITH 5 - MASTERCARD
# STARTING WITH 4 - VISA
