require 'pry'

# class Triangle
#   attr_reader :length1, :length2, :length3, :all_sides

#   def initialize(length1,length2, length3)
#     @length1 = length1
#     @length2 = length2
#     @length3 = length3
#     @all_sides = [length1, length2, length3]
#   end

#   def triangle_inequality_violated?
#     @all_sides.sort!
#     @all_sides[0] + @all_sides[1] <= @all_sides[2]
#   end

#   def kind
#     if @all_sides.any? {|side| side <= 0} || self.triangle_inequality_violated?
#         raise TriangleError
#     elsif @all_sides.all? {|side| side == length1}
#       :equilateral
#     elsif length1 == length2 || length1 == length3 || length2 == length3
#       :isosceles
#     else
#       :scalene
#     end
#   end
#   class TriangleError < StandardError
#   end
# end


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

  # def kind
  #   if !self.triangle_non_zero? || self.triangle_inequality_violated?
  #       raise TriangleError
  #   elsif @sides.uniq.size == 1
  #     :equilateral
  #   elsif @sides.uniq.size == 2
  #     :isosceles
  #   else
  #     :scalene
  #   end
  # end
  # class TriangleError < StandardError
  # end

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