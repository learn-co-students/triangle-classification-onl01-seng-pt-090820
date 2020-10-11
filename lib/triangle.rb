class Triangle
  attr_accessor :x, :y, :z
  
  def initialize(x, y, z)
    @x = x
    @y = y
    @z = z
  end

  def kind
    if x + y <= z || x + z <= y || y + z <= x || y <= 0 || x <= 0 || z <= 0
        raise TriangleError
    elsif x == y && x == z 
      :equilateral
    elsif x == y || x == z || y == z
      :isosceles
    else
      :scalene
  end
end
  
  class TriangleError < StandardError
    def message
    "You must give the triangle reasonable sides!"
    end
  end
  
end
