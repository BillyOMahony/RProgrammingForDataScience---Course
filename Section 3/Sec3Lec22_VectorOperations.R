# Vectors can be added together, with the result being a new vector where i = v1[i] + v2[i]
v1 <- c(10, 14, 21)
v2 <- c(15, 0, 21)
v1 + v2


# When adding a smaller vector to a larger vector the smaller vector should fit into the larger vector x times, 
# where x is an integer. If this is not the case there will be a warning
a1 <- c(10, 20, 40)
a2 <- c(5, 1, 2, 3, 4, 1)
a1 + a2
