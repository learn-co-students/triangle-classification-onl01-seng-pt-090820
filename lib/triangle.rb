require 'pry'
class Triangle
    attr_accessor :sides

    @sides = []
    # set an array maybe?

    def initialize (a, b, c) # triangle.new(3,2,2)
      @sides = [a, b, c] # argument passed through are the sides abc
    @sides.sort! # sort! array
    # knows that triangles violating triangle inequality are illegal 2 and 3
    end



# The sum of the lengths of any two sides of a triangle always exceeds the length
#side 1 + side 2 > side 3
  # of the third side. This is a principle known as the _triangle inequality_.
  def kind
    if @sides.any?{|side| side <= 0} || ((@sides[0] + @sides[1]) <= @sides[2])
    # if any of the sides is equal or less than 0 or if the sum of 2 sides is <= to side 3
      raise TriangleError
    elsif @sides.uniq.length == 1 
      :equilateral
    elsif @sides.uniq.length == 2
      :isosceles
    else
      :scalene
    end
  end

     
      class TriangleError < StandardError
      end
    
    
    
    end

