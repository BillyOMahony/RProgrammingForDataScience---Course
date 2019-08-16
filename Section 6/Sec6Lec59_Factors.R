

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



# ---------- LECTURE65 STARTING LAYER TIPS ---------- #

t <- ggplot(data=movies, aes(x=AudienceRating))
t + geom_histogram(binwidth=10, fill = "White", colour ="Blue")

# It is possible to set aesthetics after assigning the plot data
t <- ggplot(data=movies)
t + geom_histogram(binwidth=10,
                   aes(x=AudienceRating),
                   fill="White", colour="Blue")

# When exploring the dataset this gives greater flexibility
# We can easily change the data we wish to display; here we change to critic rating
t + geom_histogram(binwidth=10,
                   aes(x=CriticRating),
                   fill="White", colour="Blue")

# It is also possible to make a "skeleton plot"
# In this case all data is assigned in the geom functionya 
ske <- ggplot()



# ---------- LECTURE66 STATISTICAL TRANSFORMATIONS ---------- #

?geom_smooth()

u <- ggplot(data=movies, aes(x=CriticRating, y=AudienceRating, colour=Genre))

# Using the geom_smooth function
# At the moment this does not help improve the graph
u + geom_point() + geom_smooth()

# However if we turn off the fill, we can see just the averages of each genre
u + geom_point() + geom_smooth(fill=NA)


# Another type of smoother is a box plot
u <- ggplot(data=movies, aes(x=Genre, y=AudienceRating, colour=Genre))

u + geom_boxplot()

# Lets add points over the boxplot
u + geom_boxplot() + geom_point()

# This doesn't look good, it's very cluttered
# We can fix this with geom_jitter, instead of geom_point
# the jitter is based off nothing in particular, the points are positiones randomly on the x axis
u + geom_boxplot() + geom_jitter()

# A better way to visualize is to put the points first
u + geom_jitter() + geom_boxplot()

# Though we need some transparency to see all of the points
u + geom_jitter() + geom_boxplot(alpha = 0.5)

# Critic Rating
# We can see that the spread is much more uniform
u <- ggplot(data=movies, aes(x=Genre, y=CriticRating, colour=Genre))
u + geom_jitter() + geom_boxplot(alpha = 0.5)



# ---------- LECTURE67 Using Facets ---------- #

v <- ggplot(data=movies, aes(x=BudgetMillions))
v + geom_histogram(binwidth = 10, aes(fill=Genre), colour="Black")

# These histograms are fine, however it is hard to compare individual genres
# Facets help us with this, we can use them to create an individual histogram for each Genre
# facet_grid(Genre~.) here tells us we want a a row for each genre, and one single column
v + geom_histogram(binwidth = 10, aes(fill=Genre), colour="Black") + facet_grid(Genre~.)

# These histograms are hard to read however
# We can allow the y axis scale to change for each graph. 
# This has pros and cons, but it essentially rescales each graph to be the same height (but changing the axis)
v + geom_histogram(binwidth = 10, aes(fill=Genre), colour="Black") + facet_grid(Genre~., scales="free")


# scatterplots
w <- ggplot(data=movies, aes(x=CriticRating, y=AudienceRating, colour=Genre))
w + geom_point(size=I(1))  
w + geom_point(size=I(1)) + facet_grid(Genre~.)

# Another thing we can do is base the grid off of two variables
w + geom_point(size=I(1)) + facet_grid(Genre~Year)

# We can also add a smoother to this
w + geom_point(size=I(2)) + facet_grid(Genre~Year)+ geom_smooth()

# Base the size off of the Budget for the craic
w + geom_point(aes(size=BudgetMillions)) + facet_grid(Genre~Year)+ geom_smooth()



# ---------- LECTURE68 Coordinates ---------- #

# Our ratings are from 0 to 100, however the produced graphs in the last lecture have axies ranging from -100 to 150. 
# We need to zoom in on these graphs to fix the axis.
m <- ggplot(data=movies, aes(x=CriticRating, y=AudienceRating, size=BudgetMillions, colour=Genre))
m + geom_point()

# Say we only wish to see the movies with the highest ratings (AudienceRating > 50 and CriticRating > 50)
# We can use xlim and ylim
m + geom_point() + xlim(50, 100) + ylim(50, 100)

# using limits doesn't always work well however
# In the following example, data which would go above 50 on the Y axis is deleted instead of being cut off
n <- ggplot(data=movies, aes(x=BudgetMillions))
n + geom_histogram(binwidth=10, aes(fill=Genre), colour="Black") + ylim(0, 50)

# To remedy this, we can zoom in on the plot instead
# coord_cartesian is used to zoom in
n + geom_histogram(binwidth=10, aes(fill=Genre), colour="Black") + coord_cartesian(ylim=c(0, 50))

# Lets fix the ratings from the plot in the previous lecture
w + geom_point(aes(size=BudgetMillions)) + facet_grid(Genre~Year)+ geom_smooth()

# As can be seen, the y axis ranges from -50 to 150, where possible values are only in the 0 to 100 range
# To fix it:
w + geom_point(aes(size=BudgetMillions)) + facet_grid(Genre~Year) + coord_cartesian(ylim=c(0, 100)) + geom_smooth() 
