

# Matrix function, probably won't be used often.
vec.1 <- 1:20                           # Variable names can contain a .
mat.1 <- matrix(vec.1, 4, 5, T)
mat.1

mat.1[2, 5] # Selecting element at row 2, column 5

# Matrices can also be created using cbind() and rbind()

vec.2 <- c("A", "B", "C")
vec.3 <- c("D", "E", "F")
vec.4 <- c(1, 2, 3)

mat.2 <- rbind(vec.2, vec.3, vec.4) # rbind uses each vector as a new row
mat.2

mat.3 <- cbind(vec.2, vec.3, vec.4) # cbind uses each vector as a new column
mat.3

rm(vec.1)
rm(mat.1)