# Law of Large Numbers:

# Mean(Xn) -> E(X)
# The average of the actually measured value of sample converges towards the expected value of that measurement as your sample size grows

# Exercise: 
# Test the Law Of Large Numbers for N random normally distributed numbers with mean = 0, stdev = 1:
# Count hhow many of these numbers fall between -1 and 1 and divide by the total quantity of N
# The expected value: E(X) = 68.2% 

N <- 10000                   # Total number of values
InRange <- 0                 # Number of values which fall between -1 and 1

r <- rnorm(N, 0, 1)          # r = randomly generate N number(s), mean = 0, stdev = 1

for(i in r){                 # Iterate through an array (vector)
  if(i > -1 & i < 1){
    InRange <- InRange + 1
  }
}

Result <- InRange / N
Result
