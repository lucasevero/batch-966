class Building
  attr_reader :name, :width
  attr_accessor :lenght

  # STATES => INFORMATION => INSTANCE VARIABLES
  # BEHAVIOR => THINGS THEY CAN DO => METHODS
  def initialize(name, width, lenght)
    @name = name
    @width = width
    @lenght = lenght
  end

  def floor_area
    @width * @lenght
  end
end
