

# Create a function with parameters
# Function is names myplot
# rows parameter has a default value of 1:10
myplot <- function(data, rows=1:10){
  Data <- data[rows,,drop=F]
  matplot(t(Data), type="b", pch=16, col=c(1:10)) #type = b plots lines between each point
  legend("bottomleft", inset=0.01, legend=Players[rows], pch=16, col=c(1:10), horiz=F)
}

# Call the function we just made
myplot(Points ,1:5)
