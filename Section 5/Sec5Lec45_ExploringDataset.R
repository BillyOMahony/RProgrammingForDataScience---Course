

# Import Data
stats <- read.csv("RProgrammingForDataScience - Course\\Section 5\\P2-Demographic-Data.csv")

nrow(stats) # How many rows are in the file
ncol(stats) # How many columns are in the file

head(stats) # Shows the top 6 rows of the file, for brief glimpses
tail(stats) # Shows the bottom 6 rows of the file

head(stats, n=10) # Displays the top n rows

# Displays information about the columns. 
#   Gives the type of each column; factor (categorical) or numerical 
#   Gives the number of factors of each categorical column
#     e.g. Income group has 4 factors; High income, Upper middle income, Lower middle income and Low income
#     As each country is different, there is a different factor for each country
#     We likely want to group some data based on factors
str(stats)  # Stands for Structure

runif() # r-unif (not run-if), random variables distributed uniformly
rnorm() # random variables distributed normally

# Gives a breakdown of each column and shows the first 6
# For categorical data (factors), it gives a breakdown of how many instances of each there are
# For numerical data it gives statistical information
summary(stats)


