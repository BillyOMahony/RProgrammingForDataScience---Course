

# To "combine" numbers into a vector use the function c
# This is done as each variable is stored as a vector, therefore you're comining vectors together
vector <- c(3, 431, 246, 1, 2465)
vector
is.numeric(vector)
is.integer(vector)
is.double(vector)

# Create an Integer Vector
intVec <- c(1L, 32L, 4553L)
is.integer(intVec)

# Character Vector
V3 <- c("a", "BNfsd", "Cat")
V3
is.character(V3)

# Attempt to add a number to the character vector
V4 <- c("a", "b", 6)
V4 # It can be seen that the number 6 was added as a character


# Other ways to create vectors
seq() # Sequence
rep() # Replicate

# Creates a vector with numbers 1 to 15
seq(1, 15)

# Create a vector with numbers 1 to 15, but using a step of 2
seq(1, 15, 2)

# Create a vector where one number/char is replicated x times
rep(3, 50)

d <- rep(3, 50)

rep("a", 5)

# can also be used to replicate a vector
x <- c(1, 2, 3)
rep(x, 10)
