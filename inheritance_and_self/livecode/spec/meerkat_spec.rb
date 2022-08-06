require_relative "../meerkat"

describe Meerkat do
  describe "#initialize" do
    it "Should be initialized with a name" do
      timon = Meerkat.new('timon')
      expect(timon).to be_an(Meerkat)
    end

    it "Should have a getter for the name" do
      timon = Meerkat.new('timon')
      expect(timon.name).to eq("timon")
    end
  end

  describe "#eat" do
    it "Should nom nom nom" do
      expected = "Timon eats a scorpion"
      timon = Meerkat.new('timon')
      actual = timon.eat("scorpion")

      expect(actual).to eq(expected)
    end
  end
end
