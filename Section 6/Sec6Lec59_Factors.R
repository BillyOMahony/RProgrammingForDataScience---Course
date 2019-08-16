

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



# ---------- LECTURE 61: PLOTTING WITH LAYERS ---------- #

# When creating a plot, you are actually creating an object
# Layers can be added to this object
# The desired data is copied into the newly created object, as well as layers, themes, etc. 
# (all types of data for the plot can be seen in the data window)
p <- ggplot(data = movies, 
            aes(x=CriticRating, y=AudienceRating, colour=Genre, size = BudgetMillions))

# We removed the geometry above and assigned the variable
# If we run that we will not see plot points, because there is no geometry
# The plot can then be viewed as such
p

# We can run the plot, with geometry selected when we run it, e.g.:
p + geom_point()
p + geom_line()

# p contains the data, and explains how we wish to map the data
# however we can choose different types of geometry aside from that
# If we want, we can use two different types of geometry together
p + geom_line() + geom_point()



# ---------- LECTURE 62: Overriding Aesthetics ---------- #

q <- ggplot(data=movies, aes(x = CriticRating, y=AudienceRating,
                             colour=Genre, size=BudgetMillions))

# Add Geom later
q + geom_point()

# What if we don't like the default aesthetic information in the plot object?
# We can override them
# Here we are overriding the default size value
q + geom_point(aes(size=I(2)))

# We might want to override colour too
q + geom_point(aes(colour=BudgetMillions))

# We can even override the X and Y values
q + geom_point(aes(x = BudgetMillions))

# There is an issue with the overriding however, the old plot lables will remain when overriden.
# E.g. if the default x axis is CriticRating, and we change it to BudgetMillions, then the lable
#   will remain as CriticRating
# We can fix this by:
q + geom_point(aes(x = BudgetMillions)) + xlab("Budget Millions")

# If we are layering data, we can alter each layer
# Note that aes() does not need to be typed in, this is a thing called mapping vs setting.
# When aes() is used, it means the mapping of the variables changes.
# Without it, it means the mapping remains the same, but some settings are changed
q + geom_point() + geom_line(size=I(1))



# ---------- LECTURE63 MAPPING VS SETTING ---------- #

r <- ggplot(data=movies, aes(x=CriticRating, y=AudienceRating))
r + geom_point()

# Add Colour (two ways)
# 1. By Mapping
r + geom_point(aes(colour=Genre))

# 2. By Setting
r + geom_point(colour = "DarkGreen")

# The above works, however the below will not work
# This is because aes() is for mapping. saying colour="DarkGreen" in aes 
  # creates a new variable which is being mapped to DarkGreen
r + geom_point(aes(colour = "DarkGreen"))

# Another example
# Mapping
r + geom_point(aes(size=BudgetMillions))

# Setting
r + geom_point(size=5)



# ---------- LECTURE64 HISTOGRAMS AND DENSITY CHARTS ---------- #

# We're only going to use one axis for this
s <- ggplot(data = movies, aes(x=BudgetMillions))


# ----- Histogram ----- #

# We will create a histogram, each bin will cover a range of $10million
s + geom_histogram(binwidth=10)

# Add colour, but map it to genre
# we use fill to colour the bars, not colour. 
s + geom_histogram(binwidth = 10, aes(fill=Genre))

# Colour is reserved for the outline of the bins as we can see here
s + geom_histogram(binwidth = 10, colour="Black", aes(fill=Genre))


# ----- Density Chart ----- #
s + geom_density(aes(fill=Genre))

# There is an issue with this chart, some genres are hidden behind others
# This can be rectified by stacking the genres
s + geom_density(aes(fill=Genre), position="stack")



