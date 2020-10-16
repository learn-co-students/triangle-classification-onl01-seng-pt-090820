require 'pry'
class Triangle
    attr_accessor :sides

    @sides = []
    # set an array maybe?

    def initialize (a, b, c)
      @sides = [a, b, c]
    @sides.sort!
    # knows that triangles violating triangle inequality are illegal 2 and 3
    end



# The sum of the lengths of any two sides of a triangle always exceeds the length
#side 1 + side 2 > side 3
  # of the third side. This is a principle known as the _triangle inequality_.
  def kind
    if @sides.any?{|side| side <= 0} || ((@sides[0] + @sides[1]) <= @sides[2])
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

