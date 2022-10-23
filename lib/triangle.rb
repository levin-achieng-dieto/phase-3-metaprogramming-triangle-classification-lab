class Triangle
  # write code here
  attr_accessor :line1, :line2, :line3
  def initialize(line1, line2, line3)
    @line1 = line1
    @line2 = line2
    @line3 = line3
  end

  def kind
    if @line1 > 0 && @line2 > 0 && @line3 > 0 && @line1 + @line2 > @line3 && @line1 + @line3 > @line2 && @line2 + @line3 > @line1
      if @line1 == @line2 && @line1 == @line3
        return :equilateral
      elsif @line1 == @line2 || @line1 == @line3 || @line2 == @line3
        return :isosceles
      elsif @line1 != @line2 && @line1 != @line3 && @line2 != @line3
        return :scalene
      end
    else
      begin
        raise TriangleError
      end
    end
  end

  class TriangleError < StandardError
    def message
      "Invalid Triangle"
    end
  end
end
