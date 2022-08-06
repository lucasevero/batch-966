require_relative "animal"

class Lion < Animal
  def initialize(name)
    super
    @sound = "roar"
  end

  def eat(food)
    "#{super}. Law of the Jungle!"
  end
end
