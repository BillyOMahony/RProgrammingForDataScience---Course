
# allows you to load a file into R by selecting it manually
mydata <- read.csv(file.choose())

# install ggplot package
install.packages("ggplot2")

# use ggplot to create a scatterplot, select carat for x axis and price for y axis
ggplot(data=mydata[mydata$carat<2.5,], 
  aes(x=carat, y=price, colour=clarity)) + # set x axis, y axis. Also set colour to change based on clarity category
  geom_point(alpha=0.1) + # sets opacity for each point on the graph 
  geom_smooth() # draws an average line in the graph, for each category of clarity
