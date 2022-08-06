require_relative "../warthog"

describe Warthog do
  describe "#initialize" do
    it "Should be initialized with a name" do
      pumba = Warthog.new('pumba')
      expect(pumba).to be_an(Warthog)
    end

    it "Should have a getter for the name" do
      pumba = Warthog.new('pumba')
      expect(pumba.name).to eq("pumba")
    end
  end

  describe "#eat" do
    it "Should nom nom nom" do
      expected = "Pumba eats a fly"
      pumba = Warthog.new('pumba')
      actual = pumba.eat("fly")

      expect(actual).to eq(expected)
    end
  end
end
