def triangle(sideA, sideB, sideC)
  @sideA = sideA
  @sideB = sideB
  @sideC = sideC

  @equilateral = []
  @equilateral << sideA
  @equilateral << sideB
  @equilateral << sideC
  shapes[@equilateral]
end

def shapes
  {
  equilateral => [0,0,0]
  }
end
