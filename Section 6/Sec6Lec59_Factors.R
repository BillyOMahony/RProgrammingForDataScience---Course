

getwd()
setwd("/Users/Billy/Documents/RStudioWorkspace/RProgrammingForDataScience - Course/Section 6")
getwd()

# Read the dataset
movies <- read.csv(file="P2-Movie-Ratings.csv")

# Lets change the column names
colnames(movies)
colnames(movies) <- c("Film", "Genre", "CriticRating", "AudienceRating", "BudgetMillions", "Year")
head(movies)

# Lets look at the structure
# We can see that there are two columns which are factors; Film and Genre
str(movies)

# Looking at the summary we see that year is a numerical value, however we want it to be a factor
# Having year of release as a numerical value is probably useless, you won't be performing arithmetic on them
summary(movies)

# Creating a non-factor numeric variable into a factor numeric variable
# Create a vector of that column and assign it to the column
movies$Year <- factor(movies$Year)

# We can see that Year is no longer a numeric variable
str(movies)
