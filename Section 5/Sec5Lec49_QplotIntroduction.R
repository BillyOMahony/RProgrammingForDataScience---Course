

# Import Data
stats <- read.csv("RProgrammingForDataScience - Course\\Section 5\\P2-Demographic-Data.csv")
head(stats)

?qplot() # Can't see any information on qplot

# We need to use the package with qplot
library(ggplot2)
?qplot() # We can now use qplot

# Plots Internet users data as a histogram
qplot(data=stats, x=Internet.users)

# plots Income group against Birth rate, note that qplot automatically selected the right plot type (scatter plot here)
qplot(data=stats, x=Income.Group, y=Birth.rate)

# Changes the size of the plot and colours
qplot(data=stats, x=Income.Group, y=Birth.rate, size=I(2), colour=I("red"))

# Manually select type of plot
qplot(data=stats, x=Income.Group, y=Birth.rate, geom="boxplot")
