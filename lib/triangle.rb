

class Triangle

  def initialize(a, b, c)
    @sides = [a, b, c].sort!
  end

  def triangle_non_zero?
    @sides.all? {|side| side > 0} 
  end
  def triangle_inequality_violated?
    @sides[0] + @sides[1] <= @sides[2]
  end

  def kind
    raise TriangleError if !self.triangle_non_zero? || self.triangle_inequality_violated?
    case @sides.uniq.size 
    when 1
      :equilateral
    when 2
      :isosceles
    when 3
      :scalene
    end
  end
  class TriangleError < StandardError
  end
end