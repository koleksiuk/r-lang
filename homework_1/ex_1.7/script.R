x <- c(NA, FALSE, TRUE)
names(x) <- as.character(x)

print("===")
print("AND")
print(outer(x, x, "&")) ## AND table

print('===')
print("OR")
print(outer(x, x, "|")) ## OR  table

print("===")
print("XOR")
print(outer(x, x, "xor")) ## XOR  table
