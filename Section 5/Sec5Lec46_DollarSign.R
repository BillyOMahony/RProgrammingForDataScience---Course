

# Import Data
stats <- read.csv("RProgrammingForDataScience - Course\\Section 5\\P2-Demographic-Data.csv")

head(stats)
# Selecting an element from the dataframe
stats[3, 3]
stats[3, "Birth.rate"]

stats["Angola", 3] # This doesn't work however. Angola is not the name of the row, it is an element of the first column

# The dollar sign $ can let us select data from a specific column/row

# This will return the entire column as a vector
stats$Internet.users
stats[, "Internet.users"] # This is the same as above

#If we want to see all existing factors in a column we can do as follows
levels(stats$Income.Group)
