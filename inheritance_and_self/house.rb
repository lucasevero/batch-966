require_relative "building"

class House < Building
  def floor_area
    super + 50
  end

  def self.price_per_square_meter(city)
    case city
    when "Paris" then 9000
    when "Brussels" then 3000
    else raise Exception.new("No data for #{city}")
    end
  end
end

mcmansion =  House.new("McMansion", 100, 300)
p mcmansion.floor_area
House.price_per_square_meter("Paris")
