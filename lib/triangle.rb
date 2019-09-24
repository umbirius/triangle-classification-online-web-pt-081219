class Triangle
  
  attr_reader :s_one, :s_two, :s_three
  
  def initialize(s_one, s_two, s_three)
      @s_one = s_one
      @s_two = s_two
      @s_three = s_three
  end 
  
  def kind 
    if s_one == s_two && s_two == s_three 
      :equilateral 
    elsif s_one == s_two || s_two == s_three || s_three == s_one
      :isosceles
    else
      :scalene
    end 
  end 
  
  def validate_triangle
      if (s_one + s_two < s_three) || (s_two + s_three < s_one) || (s_three + s_one < s_two) || s_one <= 0 || s_two <= 0 || s_three <= 0
        raise TriangleError
    end
  end 

class TriangleError < StandardError
  def message
    "You must enter side lengths equal to a valid triangle"
  end 
end 

