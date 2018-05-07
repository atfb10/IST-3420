# Adam Forestier
# September 15, 2017

# Install SQLite package for R
install.packages("RSQLite")
library(RSQLite)

# Set working directory
setwd("D:/College Work/Junior Year/IST 3420/3420 Class Practice")

# Name of database file
db_file <- "TelecomService.sqlite"

# Connect to database
connection <- dbConnect(dbDriver("SQLite"), dbname = db_file)

# Read in call table 
call_data <- dbGetQuery(connection, "SELECT * FROM CALL")
head(call_data, n = 5)
summary(call_data)
str(call_data)

# Read in contract table
contract_data <- dbGetQuery(connection, "SELECT * FROM CONTRACT")
head(contract_data, n = 5)
summary(contract_data)
str(contract_data)

# Get both call and contract data
combined_data <- dbGetQuery(connection,
                            "Select * FROM Call a, Contract b WHERE a.AreaCode = b.AreaCode AND
                            a.Phone = b.Phone")
head(combined_data, n = 3)


combined_data$Churn <- as.factor(combined_data$Churn)
combined_data$InternationalPlan <- as.factor(combined_data$InternationalPlan)
combined_data$State <- as.factor(combined_data$State)
str(combined_data)
