

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



# ---------- LECTURE 60: Aesthetics ---------- #

# Load ggplot2
library(ggplot2)

# The aes function allows you to set aesthetics
# aesthetics describes how the data is mapped to what you want to see
# We wish to map CriticRating against AudianceRating
ggplot(data = movies, aes(x=CriticRating, y=AudienceRating))

# SO far, the above function does nothing, only creates an empty graph. We need to do more.
# This is because ggplot wants us to specify what we want; type of plot, type of points etc.

# We can add geometry to this plot
ggplot(data = movies, aes(x=CriticRating, y=AudienceRating)) + geom_point

# We can also colour and size the points, as with qplot()
# In this case we size the datapoints based off of the budget. Larget budget films get bigger dots
ggplot(data = movies, aes(x=CriticRating, y=AudienceRating, colour=Genre, size = BudgetMillions)) + geom_point()

       