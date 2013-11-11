y20 <- rnorm(20)
y100 <- rnorm(100)

x <- seq(-4, 4, by = 0.1)
plot(x, pnorm(x), type="l", col="red", main = "n=20")
plot(ecdf(y20), add = T)

#plot(x, pnorm(x), type="l", col="red", main = "n=100")
#plot(ecdf(y100), add = T)
