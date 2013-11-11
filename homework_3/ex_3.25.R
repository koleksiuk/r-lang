n <- 1000000
u <- runif(n)

lambda = 1;
x <- -(1/lambda)*log(1-u)

hist(x, prob = T, main = NA, ylim = c(0, 1.2), breaks = 100)
lines(density(x), col = "blue")


s=0.005
l=0
x<-s*tan(pi*(u-0.5))+l

hist(x, prob = T, main = NA, ylim = c(0,1.2),breaks = 100)
lines(density(x), col = "blue")

s=1
mi<-2
x<- -(s*log((1/u)-1)+mi)

hist(x, prob = T, main = NA, ylim = c(0, 1.2),breaks = 100)
lines(density(x), col = "blue")
