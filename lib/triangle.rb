class Triangle
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    verify
    if a == b && b == c
      :equilateral
    elsif a != b && b != c && c != a
      :scalene
    else
      :isosceles
    end
  end

  def verify
    if a <= 0 || b <= 0 || c <= 0
      raise TriangleError
    elsif a + b <= c || a + c <= b || b + c <= a
      raise TriangleError 
    end
  end

  class TriangleError < StandardError
  end
end
