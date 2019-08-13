

x <- rnorm(5)
x

# Conventional programming loop
for(j in 1:5){
  print(x[j])
}

# R Specific programming loop
for(i in x){
  print(i)
}


#---- The difference between the R way and conventional programming way

N <- 100
a <- rnorm(N)
b <- rnorm(N)

# We want to multiply a[i] by b[i] for each element and output a new array. We can do this in two ways
# Vectorized approach (R)
c <- a * b

# Devectorized approach (conventional)
d <- rep(NA, N) # Create an empty array (fillit with null but have enough space)
for(i in 1:N){
  d[i] <- a[i] * b[i]
}

# We can see the the R approach is easier and quicker to type out. The R approach is also faster.