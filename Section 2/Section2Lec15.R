

# ----- -2 ----- -1 ----- 0 ----- 1 ----- 2 -----

# Generate 1 random number based on normal distribution
rm(answer)
x <- rnorm(1)

if(x > 1){
  answer <- "Greater than 1"
} else if(x < -1){
  answer <- "Less than -1"
} else{
  answer <- "Between -1 and 1"
}

answer
