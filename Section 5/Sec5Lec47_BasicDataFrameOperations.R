

# Import Data
stats <- read.csv("RProgrammingForDataScience - Course\\Section 5\\P2-Demographic-Data.csv")

# Subsetting
# Show first 10 rows, and all columns
stats[1:10, ]

# Select certain rows
stats[c(4, 6, 12), ]

# Show all rows, but only certain columns
stats[, 1:3]


# unlike with matrices, selecting a single row from a dataframe does not return a vector; it returns a dataframe
is.data.frame(stats[1, ]) # returns TRUE

# Returning a single column however does return a vector
is.data.frame(stats[, 1])

# to return a data frame from a column:
stats[ , 1, drop=F] # as with the matrix for a row


# Arithmetic operations - these examples make no sense in, just ecamples of how to do it
stats$Birth.rate * stats$Internet.users # multiply birthrate by internet users, returns a vector


# Add a new column
# This adds the multiplication of birthrate and internetusers as a new column
stats$Calculation <- stats$Birth.rate * stats$Internet.users

# Adding a vector of less length than the dataframe as a new column will cause the values to repeat
stats$Repeating.Values <- 1:3
head(stats)


# Deleting a column
stats$Calculation <- NULL # assign null to a column to delete it
stats$Repeating.Values <- NULL

head(stats)
