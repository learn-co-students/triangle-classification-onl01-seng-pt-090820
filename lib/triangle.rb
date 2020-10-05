class Triangle
  # triangle code
 
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c 
  end

  def kind 
    if @a<=0 or @b<=0 or @c<=0
      raise TriangleError 
    elsif @a+@b<=@c or @b+@c<=@a or @a+@c<=@b
      raise TriangleError 
    elsif @a==@b and @a==@c
      return :equilateral                  
    elsif @a==@b or @b==@c or @a==@c
      return :isosceles 
    else 
      :scalene
    end
  end
  
  class TriangleError < StandardError
    # triangle error code
  end
end