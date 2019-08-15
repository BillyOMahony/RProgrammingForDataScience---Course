

# Two different ways to import data into RStudio


# ----- 1. Select a file manually ----- #

# file.choose will prompt to select a file
# The choosen file will be assigned to a dataframe object
stats <- read.csv(file.choose()) 
rm(stats)


# ----- 2. Set Working Directory and read data from there ----- #

# Get the current working directory (shown in console)
getwd()

# Set a new working directory
setwd("C:\\Users\\Billy\\Documents\\RStudioWorkspace")
getwd()

stats <- read.csv("RProgrammingForDataScience - Course\\Section 5\\P2-Demographic-Data.csv")
