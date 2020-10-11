require 'pry'

class Triangle

  attr_accessor :side_1, :side_2, :side_3

  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def kind
    self.valid_triangle?
    if side_1 == side_2 && side_2 == side_3
      :equilateral
    elsif side_1 == side_2 || side_2 == side_3 || side_1 == side_3
      :isosceles
    else 
      :scalene
    end
  end

  def valid_triangle?
    true_triangle = [(side_1 + side_2 > side_3), (side_2 + side_3 > side_1), (side_1 + side_3 > side_2)]
    sides = [side_1, side_2, side_3]
    sides.each do |side|
      true_triangle << false if side <= 0
    raise TriangleError if true_triangle.include?(false)
    end
  end

  class TriangleError < StandardError
  end

end
