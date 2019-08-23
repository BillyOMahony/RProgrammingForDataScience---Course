getwd()
data <- read.csv("RProgrammingForDataScience - Course\\Section 6\\P2-Section6-Homework-Data\\Section6-Homework-Data.csv")
data
summary(data)
colnames(data)

library(ggplot2)

# The data will have to be filtered. Only 6 studios, and 5 genres are desired
# Genres: action, adventure, anumation, comedy, drama
# Studios: Buena Vista Studios, Fox, Paramount Pictures, Sony, Universal, WB
filter <- data$Genre == "action" | 
  data$Genre == "adventure" | 
  data$Genre == "animation" | 
  data$Genre ==  "comedy" | 
  data$Genre ==  "drama"
d1 = data[filter, ]

filter <- d1$Studio == "Buena Vista Studios" |
  d1$Studio == "Fox" |
  d1$Studio == "Paramount Pictures" |
  d1$Studio == "Sony" |
  d1$Studio == "Universal" |
  d1$Studio == "WB"
d2 = d1[filter, ]


# Plot Domestic Gross % against Genre.
# Use a box plot with Jitter
# Use size of points for Budget in $M
# The colour of points should be based off of studio

p <- ggplot(data = d2, aes(x=Genre, y=Gross...US))
plot <- p + geom_jitter(aes(colour=Studio, size=Budget...mill.)) + geom_boxplot(alpha=0.5)

plot + ylab("Gross % US") +
  ggtitle("Domestic Gross % by Genre") +
  theme(axis.title.x = element_text(colour="Blue", size=16),
        axis.title.y = element_text(colour="Blue", size=16),
        plot.title = element_text(size=25))
  

        