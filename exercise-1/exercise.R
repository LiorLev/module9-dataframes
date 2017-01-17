#module 9
# Exercise 1: Creating data frames

# Create a vector of the number of points the Seahawks scored in each game this
# season (google "Seahawks" for the info!)

seahawks <- c(20, 31, 31, 26, 5, 40, 10, 24, 31, 25, 26, 20)

# Create a vector of the number of points the Seahwaks have allowed to be scored
# against them in each game this season

opponents <- c(25, 25, 24, 15, 14, 7, 38, 3, 34, 23, 6, 36)


# Combine your two vectors into a dataframe

games <- data.frame(seahawks, opponents)

print(games)
# Create a new column "diff" that is the difference in points.
# Hint: recall the syntax for assigning new elements (which in this case will be
# a vector) to a list!

games$diff <- games$seahawks-games$opponents

# Create a new column "won" which is TRUE if the Seahawks won

games$won <- games$diff>0

# Create a vector of the opponent names corresponding to the games played

row.names <- c("saints", "bills", "patriots", "eagles", "buccaneers", "panthers", "packers", "rams", "cardinals", "49ers", "lions", "falcons")

# Assign your dataframe rownames of their opponents
rownames(games) <- row.names
print(games)

# View your data frame to see how it has changed!
