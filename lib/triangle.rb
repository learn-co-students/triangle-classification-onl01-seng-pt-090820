class Triangle
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end
  
  def kind
    all_sides = [@a, @b, @c]
    all_sides.sort!
    if all_sides.any? { |side| side <= 0 } || all_sides[0] + all_sides[1] <= all_sides[2]
      raise TriangleError
    elsif @a == @b && @b == @c
      :equilateral
    elsif @a != @b && @b != @c && @a != @c
      :scalene
    else
      :isosceles
    end
  end
  
  class TriangleError < StandardError
    
  end
end
