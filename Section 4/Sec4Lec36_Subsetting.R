
x <- c("a", "b", "c", "d", "e")
x

# Extract just the first and last element
x[c(1, 5)]

# Just element 3
x[3]

# Both of the above examples show subsets of x

# Matrices can also be subsetted
# Say we want to see three specific players stats for two particular years
Games

Games[1:3, 6:10]
Games[c("KobeBryant", "DwayneWade"), ]
Games[ , c("2008", "2009", "2014")]

# If we just extract one row of a matrix, we will not see the row name. 
# This is because a vector is extracted rather than a matrix.
Games[1, ]
# Same if we extract an element
Games[1, 3]

# This is because R is trying to guess what we want, we requested a one dimensional object and that was returned
# If we want a matrix instead we can do as follows
Games[1, ,drop=F]
Games[1, 3, drop=F]

rm(x)