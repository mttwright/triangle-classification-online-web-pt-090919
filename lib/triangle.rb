class Triangle
  
  attr_reader :a, :b, :c
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
    

  end
  
  def kind
    if @a == @b && @b == @c
      :equilateral
    elsif @a == @b || @b == @c || @a == @c
      :isosceles
    else
      :scalene
    end
    
    if @a <= 0 && @b <= 0 && @c <= 0
      raise TriangleError
    end
  end
    
    
  
  
  class TriangleError < StandardError
  end
  
  
end
