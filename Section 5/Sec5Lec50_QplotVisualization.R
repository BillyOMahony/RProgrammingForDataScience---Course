

# Import Data
stats <- read.csv("RProgrammingForDataScience - Course\\Section 5\\P2-Demographic-Data.csv")
head(stats)

# Plot Internet users against Birth.rate
# From this plot we can see countries with lower birth rate have more internet users
qplot(data= stats, x=Internet.users, y=Birth.rate)

# Lets change the dot size and colour
qplot(data= stats, x=Internet.users, y=Birth.rate, colour=I("red"), size=I(2))

# We can however base the dot colour off another category, such as income group
# Note this automatically makes a legend
qplot(data= stats, x=Internet.users, y=Birth.rate, colour=Income.Group, size=I(2))
