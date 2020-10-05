require 'pry'

class Triangle
  attr_reader :length1, :length2, :length3, :all_sides

  def initialize(length1,length2, length3)
    @length1 = length1
    @length2 = length2
    @length3 = length3
    @all_sides = [length1, length2, length3]
  end

  def triangle_inequality_violated?
    @all_sides.sort!
    @all_sides[0] + @all_sides[1] <= @all_sides[2]
  end

  def kind
    if @all_sides.any? {|side| side <= 0} || self.triangle_inequality_violated?
        raise TriangleError
    elsif @all_sides.all? {|side| side == length1}
      :equilateral
    elsif length1 == length2 || length1 == length3 || length2 == length3
      :isosceles
    else
      :scalene
    end
  end
  class TriangleError < StandardError
  end

end
