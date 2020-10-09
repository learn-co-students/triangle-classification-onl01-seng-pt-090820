require "pry"

class Triangle
  
  attr_accessor :a, :b, :c
  
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end


  def kind
    sub_zero = a <= 0 || b <= 0 || c <= 0 
    less_than_equal = a + b <= c || a + c <= b || b + c <= a
    if sub_zero || less_than_equal
      raise TriangleError
    elsif a == b && a == c && b == c
      :equilateral
    elsif a == c || a == b || b == c
      :isosceles
    elsif a != b && a != c && b != c
      :scalene
    end
  end
  
  
  class TriangleError < StandardError
    def message
      "Your triangle is busted"
    end
  end
  
end