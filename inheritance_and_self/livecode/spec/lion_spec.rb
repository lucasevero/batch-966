require_relative "../lion"

describe Lion do
  describe "#initialize" do
    it "Should be initialized with a name" do
      simba = Lion.new('simba')
      expect(simba).to be_an(Lion)
    end

    it "Should have a getter for the name" do
      simba = Lion.new('simba')
      expect(simba.name).to eq("simba")
    end
  end
  describe "#eat" do
    it "Should nom nom nom" do
      expected = "Simba eats a gazelle. Law of the Jungle!"
      simba = Lion.new('simba')
      actual = simba.eat("gazelle")

      expect(actual).to eq(expected)
    end
  end
end
