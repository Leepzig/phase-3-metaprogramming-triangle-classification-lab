require "pry"

class Triangle
 
  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
    @sides = [side_1, side_2, side_3]
  end

  def kind
    if !valid_triangle?
      raise TriangleError
    elsif @sides.uniq.count == 1
      :equilateral
    elsif @sides.uniq.count == 2
      :isosceles
    else
      :scalene
    end
  end

  class TriangleError < StandardError

  end

  private

  def valid_triangle?
    if @sides.any? {|num| num <= 0}
      false
    elsif @side_1 + @side_2 > @side_3 && @side_2 + @side_3 > @side_1 && @side_1 + @side_3 > @side_2
      true
    else
      false
    end
  end



end

tri = Triangle.new(4, 4, 6)
traid = Triangle.new( 2,2,2)
now = Triangle.new( 5, 6, 7)
noway = Triangle.new( 7, 13, 2)

# binding.pry