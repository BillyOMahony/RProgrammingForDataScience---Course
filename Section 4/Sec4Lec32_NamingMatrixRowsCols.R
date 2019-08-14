vec.apps = c(38, 36, 28)
vec.goals = c(24, 21, 12)
vec.assists = c(5, 14, 23)

mat.stats = cbind(vec.apps, vec.goals, vec.assists)
mat.stats

# The row and column names can be renamed. elements can be selected by their [row, col] names

# the names assigned to elements in a vector can be checked with the names() function
names(vec.apps)

# the names function can also be used to change names
names(vec.apps) <- c("Totti", "Shevchenko", "Kuyt")
names(vec.apps)

# the names can then be used to access elements
vec.apps["Kuyt"]

# Names can also be cleared
names(vec.apps) <- NULL
names(vec.apps)


# --- Rows and Columns can also be named in matrices. rownames() and colnames() can be used like names() for vectors
rownames(mat.stats)
colnames(mat.stats)

rownames(mat.stats) <- c("Totti", "Shevchenko", "Kuyt")
colnames(mat.stats) <- c("Appearances", "Goals", "Assists")

# These names will now appear in the table
mat.stats

mat.stats["Totti", "Goals"]
