
#salary
myplot(Salary)
myplot(Salary / Games)
myplot(Salary / FieldGoals)

# It can be noted that there are two outliers in the Salary/Games and Salary/FieldGoals plots
# This is due to injuries sustained for that season by the outliers
# Plotting Salary per game is therefore not a good metric

# In-Game Metrics
myplot(MinutesPlayed)
myplot(Points)

# In-Game Metrics Normalized
myplot(FieldGoals/Games)
myplot(FieldGoals/FieldGoalAttempts)
myplot(FieldGoalAttempts/Games)
myplot(Points/Games)

# Observations
myplot(MinutesPlayed/Games) # It can be seen that average minutes played per game is dropping
myplot(Games) # They seem to be playing the same amount of games though

myplot(FieldGoals/MinutesPlayed)
myplot(FieldGoals/MinutesPlayed, 5)
