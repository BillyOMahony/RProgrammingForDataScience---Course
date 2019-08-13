

# Three ways to create a vector
x <- c(1, 123, 532, 133) # combine
y <- seq(201, 250, 11)   # sequence
z <- rep("Hi", 3)        # replicate

# Accessing individual elements of a vector
w <- c("a", "b", "c", "d", "e")
w

w[1] # The first element is at position 1, rather than 0 as in normal languages
w[2]
w[3]

# Square brackets in R are more versatile than other languages
w[-1] # all elements aside from element 1
w[-4]

# Access several elements
w[1:3] # Access elements 1 to 3
w[3:5]

# An "index vector" can be created. This index vector can specify index wanted from another vector
indexV <- c(1, 3, 5)
w[indexV] # Use the index vector on another vector 

negIV <- c(-1, -4) # Can also specify what we don't want
w[negIV]

v <- w[c(-2:-4)] # The result of a vector lookup can be assigned to a new vector

