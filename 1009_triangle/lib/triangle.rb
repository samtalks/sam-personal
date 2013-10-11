class Triangle
  attr_accessor :num1, :num2, :num3

  def initialize(num1, num2, num3)
    @num1, @num2, @num3 = num1, num2, num3
  end

  def kind
    raise TriangleError if [num1,num2,num3].min <= 0
    raise TriangleError if num1>=num2+num3 || num2>=num1+num3 || num3>=num1+num2

    if num1 == num2 && num1 == num3
      :equilateral
    elsif num1 == num2 || num1 == num3 || num2 == num3
      :isosceles
    else
      :scalene
    end
  end
end


class TriangleError < StandardError
end