

# Packages can be installed as follows
install.packages("ggplot2")
# The ggplot dataset comes with some prepackaged data sets, such as the diamonds dataset

# We want to activate and use the ggplot dataset in this script
library(ggplot2)

# Some functions in this package
?qplot()
?ggplot()
?diamonds

# Graph some stuff from the diamonds dataset
qplot(data=diamonds, carat, price, color = clarity, facets=.~clarity)
