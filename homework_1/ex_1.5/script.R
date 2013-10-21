vc <- c(23, 51, 0, -2, 32, 62, 12, 1.2, 35.3, -9, 0)

print("Ex 1.5")
print("===================")
print("Vector:")
print(vc)

print("Non-negative:")
print(vc[vc >= 0])

print("Odd-indexed elements:")
print(vc[seq(1, length(vc), 2)])

print("Replace 0 with NA:")
vc2 <- vc
vc2[vc2 == 0] <- NA
print(vc2)

print("Sort non-increasingly")
print(sort(vc, decreasing=TRUE))
