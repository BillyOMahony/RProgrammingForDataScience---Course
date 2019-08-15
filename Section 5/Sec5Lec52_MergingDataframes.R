

# --- We want to merge the mydf dataframe created in Lec 51 with the stats dataframe

head(stats)
head(mydf)

# We want to merge the two tables on the stats Country.Code column and the mydf Code column
# When merging, by.x is the first dataframe, and by.y is the second
mergedstats <- merge(stats, mydf, by.x = "Country.Code", by.y = "Code")
head(mergedstats)

# We end up at two Country columns in the merged table, so we simply remove one
mergedstats$Country <- NULL
str(mergedstats)



# ---------- LECTURE 53: VISUALIZING WITH QPLOT PART II ----------

library(ggplot2)

# Plot Birth rate against Internet users. Colour each country based on it's region
qplot(data=mergedstats, x=Birth.rate, y=Internet.users, colour=Region, size=I(3))

# Graphs can also have different types of points other than circles
qplot(data=mergedstats, x=Birth.rate, y=Internet.users, colour=Region, size=I(2), shape=I(15))

# Different shapes can be assigned to different categories, similar to colours
qplot(data=mergedstats, x=Birth.rate, y=Internet.users, colour=Region, size=I(2), shape=Income.Group)

# Points on the graph can have different transparancy
qplot(data=mergedstats, x=Birth.rate, y=Internet.users, colour=Region, size=I(5), alpha=I(0.5))

# Titles can also be added
qplot(data=mergedstats, x=Birth.rate, y=Internet.users, colour=Region, size=I(5), alpha=I(0.5), main="Birth Rate vs Internet Users")


      