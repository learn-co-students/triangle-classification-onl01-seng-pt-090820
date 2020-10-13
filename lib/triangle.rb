class Triangle
  # write code here
  attr_accessor :length1, :length2, :length3
  
  def initialize(length1, length2, length3)
    @length1 = length1
    @length2 = length2
    @length3 = length3
  end
  
  def kind 
    ret = "i didnt fill any conditionals"
    if @length1 + @length2 <= @length3 || @length1 + @length3 <= @length2 || @length2 + @length3 <= @length1 || @length1 <= 0 || @length2 <= 0 || @length3 <= 0 #|| @length3 + @length2 < @length1 || @lenght1 + @length3 < @length2 || @length1 == 0 || @length2 == 0 || @length3 == 0
      begin 
        raise TriangleError
      # rescue TriangleError => error
      #   error.message
      end 
    else 
      if @length1 == @length2 && @length2 == @length3 && @length3 == @length1
        ret = :equilateral
      elsif @length1 == @length2 || @length2 == @length3 || @length1 == @length3
        ret = :isosceles
      else 
        ret = :scalene
      end
    end
    ret
  end
  
  class TriangleError < StandardError
    def message 
      puts "haha this works I guess"
    end
  end
  
end
