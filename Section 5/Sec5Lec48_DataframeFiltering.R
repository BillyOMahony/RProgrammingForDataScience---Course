

# Import Data
stats <- read.csv("RProgrammingForDataScience - Course\\Section 5\\P2-Demographic-Data.csv")
head(stats)

# Filtering dataframes

# ----- Filtering by Numberical data ----- #

# We wish to see which countries have less than 2% internet users. We can do this by comparing the internet users
# column with 2, which returns a true, false array
filter <- stats$Internet.users < 2 

# By using this true/false array, we can return only the rows which are true in the filter vector
stats[filter,]

# Countries where birthrate is over 40
# The filter array doesn't need to be saved, it can be put straight into brackets
stats[stats$Birth.rate > 40, ]

# Select countries where:
  # Birthrate is over 40
  # AND internet users is less than 2
stats[stats$Birth.rate > 40 & stats$Internet.users < 2, ]


# ----- Filtering by Categorical data ----- #

# Show all high income countries
stats[stats$Income.Group == "High income", ]

# Show all countries which aren't low income
stats[stats$Income.Group != "Low income", ]

# Show all information about Ireland
stats[stats$Country.Name == "Ireland", ]

