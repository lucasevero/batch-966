# TDD -TEST DRIVEN DEVELOPMENT
# 1 - WRITE SOME TESTS
# 2 - MAKE THEM GREEN
# 3 - REFACTOR

# rspec gem
require_relative "../credit_card_checker"

describe "credit_card_checker" do
  it "Should be invalid if the input is a empty string" do
    expected = "Invalid card"
    actual = credit_card_checker("")

    expect(actual).to eq(expected)
  end

  it "Should be valid card if it has 16 digits with spaces and starts with 4" do
    expected = "Valid Visa card"
    actual = credit_card_checker("4242 4242 4242 4242")

    expect(actual).to eq(expected)
  end

  it "Should be valid Mastercars card if it has 16 digits and starts with 5" do
    expected = "Valid Mastercard card"
    actual = credit_card_checker("5555 4242 4242 4242")

    expect(actual).to eq(expected)
  end

  it "Should be invalid if it downs't start with a 4 or 5" do
    expected = "Invalid card"
    actual = credit_card_checker("3232 4242 4242 4242")

    expect(actual).to eq(expected)
  end

  it "Should be invalid card if it has any other non-digit characters" do
    expected = "Invalid card"
    actual = credit_card_checker("4242-4242-4242-4242")

    expect(actual).to eq(expected)
  end
end
