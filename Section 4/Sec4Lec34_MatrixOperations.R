

# Remember to run Basketball Dataset R code before this

Games
rownames(Games)
colnames(Games)

# If we want to know how many games LeBronJames played in 2007, we can do as follows
Games["LeBronJames", "2007"]

FieldGoals

# How many field goals did each player score per game?
# FieldGoals shows how many goals each player scored per year 
# while Games shows how many games each player player per year
# We can simply divide the FieldGoals matrix by the Games matrix 
round(FieldGoals / Games, 1)

# How many minutes did each player play per game per year?
round(MinutesPlayed / Games)

round(Salary/MinutesPlayed)
