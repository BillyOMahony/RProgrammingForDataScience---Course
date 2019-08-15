

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
