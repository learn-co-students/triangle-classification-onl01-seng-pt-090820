class Triangle
  attr_accessor :side1, :side2, :side3, :sides
  
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    @sides = [side1, side2, side3]
  end
  
  def kind 
    if negative? == true || valid? == false 
      raise TriangleError
    elsif equilateral?
      :equilateral
    elsif isosceles?
      :isosceles
    elsif scalene?
      :scalene
    end
  end
  
  def equilateral?
    side1 == side2 && side2 == side3
  end
  
  def isosceles?
    side1 == side2 || side2 == side3 || side1 == side3
  end
  
  def scalene?
    side1 != side2 && side2!= side3 && side1 != side3
  end
  
  def valid?
    side1 + side2 > side3 && side2 + side3 > side1 && side1 + side3 > side2
  end
  
  def negative?
    sides.each do |side|
      side <= 0? true : false 
    end
  end
  
  class TriangleError < StandardError
  end
  
end
