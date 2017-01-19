# Exercise 1: Creating data frames

# Create a vector of the number of points the Seahawks scored in each game this
# season (google "Seahawks" for the info!)
seahawks.score <- c(12,3,37,27,26,6,20,31,31,26,5,40,10,24,31,25,26,20)

# Create a vector of the number of points the Seahwaks have allowed to be scored
# against them in each game this season
opponent.score <- c(10,9,18,17,24,6,25,25,24,15,5,7,38,3,34,23,6,36)

# Combine your two vectors into a dataframe
seahawks.2017.season <- data.frame(seahawks.score,opponent.score,stringsAsFactors = FALSE)

# Create a new column "diff" that is the difference in points.
# Hint: recall the syntax for assigning new elements (which in this case will be
# a vector) to a list!
seahawks.2017.season$diff <- seahawks.score - opponent.score

# Create a new column "won" which is TRUE if the Seahawks won
seahawks.2017.season$won <- seahawks.2017.season$diff > 0

# Create a vector of the opponent names corresponding to the games played
opponent.name <- c("MIA", "LA1", "SF1", "NY", "ATL" ,"ARI1", "NO", "BUF", "NE", "PHI", "TB", "CAR", "GB", "LA2", "ARI2", "SF2","DET", "ATL-playoff")

# Assign your dataframe rownames of their opponents
rownames(seahawks.2017.season) <- opponent.name

# View your data frame to see how it has changed!
View(seahawks.2017.season)
