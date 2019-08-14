?matplot

# Plot a simple matrix, e.g. fieldgoals
FieldGoals

# By default the function will map each column
matplot(FieldGoals)

# We want to plot each row however, to do this we need to flip columns and rows (transposing)
t(FieldGoals)
matplot(t(FieldGoals))

# The generated plot does not make a lot of sense however, we need to add more stuff
matplot(t(FieldGoals/Games), type="b", pch=15:18, col=c(1:4, 6)) #type = b plots lines between each point
legend("bottomleft", inset=0.01, legend=Players, col=c(1:4, 6), pch=15:18, horiz = F)

# Field goals / field goals attempts will give us the accuracy of each player
matplot(t(FieldGoals/FieldGoalAttempts), type="b", pch=15:18, col=c(1:4, 6)) #type = b plots lines between each point
legend("bottomleft", inset=0.01, legend=Players, col=c(1:4, 6), pch=15:18, horiz = T)
