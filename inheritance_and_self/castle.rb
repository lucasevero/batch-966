require_relative "building"
require_relative "butler"

class Castle < Building
  attr_accessor :butler, :ruler

  def initialize(name, width, lenght, ruler)
    super(name, width, lenght)
    @ruler = ruler
    @butler = Butler.new(self)
  end

  def self.categories
    ["Medieval", "Norman", "Ancient"]
  end

  def has_butler?
    @butler != nil
  end

  def ruler_name
    @ruler
  end

  def ownership_details
    "#{@name} is owned by #{ruler_name}"
  end
end

some_castle = Castle.new("Tower of London", 32, 35, "Ben")
some_castle.has_butler?
p some_castle.ownership_details

Castle.categories # => ["Medieval", "Norman", "Ancient"]
