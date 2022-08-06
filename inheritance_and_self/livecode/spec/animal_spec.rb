require_relative "../animal"

describe Animal do
  describe "#initialize" do
    it "Should be initialized with a name" do
      dobby = Animal.new('Dobby')
      expect(dobby).to be_an(Animal)
    end

    it "Should have a getter for the name" do
      dobby = Animal.new('Dobby')
      expect(dobby.name).to eq("Dobby")
    end
  end

  describe "::phyla" do
    it "Should return the array with the four phyla" do
      expect(Animal.phyla.size).to eq(4)
    end
  end
end
