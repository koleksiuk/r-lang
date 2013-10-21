matrice <- matrix(c(3, 3.2, 1, 1.2, -1, -3, 5, 0, 4), ncol=3)

print("Ex 1.6")
print("===================")
print(matrice)

print("Print out the value in the 2nd row, 2nd column.")
print(matrice[2,2])

print("Print out the last row.")
print(matrice[3,])

print("Print out the first column.")
print(matrice[,1])

print("Solve the system of linear equations Ax = b, where b = (4, -3, 2)")
b <- c(4, -3, 2)
print(solve(matrice, b))

print("Solve the previous problem by calculating x = A-1b.")
print(matrice^(-1) %*% b)
