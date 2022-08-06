class Animal
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def talk
    "#{@name} #{@sound}s!"
  end

  def self.phyla
    ["Ecdysozoa", "Lophotrochozoa", "Deuterostomia", "Bilateria"]
  end

  def eat(food)
    "#{@name.capitalize} eats a #{food}"
  end
end
