integral <- function(lower, upper, fun, division = 100) {
  print(fun)
  distance <- (upper - lower) / division
  points = seq(lower, upper, by = distance) + distance / 2

  points = points[1:length(points)-1]
  sum(fun(points) * distance)
}

print("a")
print(integral(0, 1, function(x) { 2+x*0 }))

print("b")
print(integral(0, 4, function(x) { x }))

print("c")
print(integral(0, pi, function(x) { sin(x) }))
