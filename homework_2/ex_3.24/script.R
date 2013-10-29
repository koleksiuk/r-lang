x <- runif(1000000, min=-2, max=2)

fnc = function(x) {
  return ((1/(sqrt( 2*pi ))) * exp((-x^2)/2))
}

ResMonteCarlo <- 4*mean(fnc(x)) #b–a=4

Res <- integrate(fnc, -2, 2)
print("Monte Carlo:")
print(ResMonteCarlo)

print("Built in integral")
print(Res)


n <- 1000000
r <- 0.75^(1/3)
x <- runif(n, -r, r)
y <- runif(n, -r, r)
z <- runif(n, -r, r)
s <- sum(x^2 + y^2 + z^2 < r^2)/n
V1 <- (2*r)^3
V <- V1*s

print("Monte Carlo:")
print(V)

Vol=4/3*pi*r^3
Vol
print("Standard Equation 4/3*pi*r^3")
print(Vol)
