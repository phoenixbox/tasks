def triangle(a, b, c)
  validate_triangle!(a, b, c)
  identify_triangle_type(a, b, c)
end
 
def validate_triangle!(a, b, c)
  raise TriangleError if !possible_triangle?(a, b, c)
end
 
def identify_triangle_type(a, b, c)
  if a == b && b == c
    :equilateral
  elsif a != b && b != c && a != c
    :scalene
  else
    :isosceles
  end
end
 
def possible_triangle?(a, b, c)
  side_1, side_2, hypotenuse = [a, b, c].sort
  (side_1 + side_2) > hypotenuse
end
 
class TriangleError < Exception; end