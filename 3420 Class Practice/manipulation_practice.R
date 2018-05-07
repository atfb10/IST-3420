setwd("D:/College Work/Junior Year/IST 3420/Homework - Code/Homework 3")

retail_df <- read.csv("top100retailers2015.csV", header = T)

str(retail_df)

# Remove , and $
retail_df$RetailSales2014 <- gsub("[,$]", "", retail_df$RetailSales2014)

# Convert RetailSales2014 column to a numeric 
retail_df$RetailSales2014 <- as.character(retail_df$RetailSales2014)
retail_df$RetailSales2014 <- as.numeric(retail_df$RetailSales2014)
 
str(retail_df)

# Load this car data set for practice
data("mtcars")

# Show structuer
str(mtcars)

# Order by best gas mileage. Note: minus sign makes it decreasing
mtcars <- mtcars[order(-mtcars$mpg),]

# Order cars by least horsepower
mtcars <- mtcars[order(mtcars$hp),]

# Order cars by best horsepower and then by best gas mileage if there is a tie of horsepower
mtcars <- mtcars[order(-mtcars$hp, -mtcars$mpg),]


# Indexing syntax in Base R
mpg_vs_weight <- mtcars[c("mpg", "wt")]

# Order by mgp
mpg_vs_weight <- mpg_vs_weight[order(-mpg_vs_weight$mpg),]

# Indexing by writing what you want excluded
not_am <- mtcars[c(-9)]
View(not_am)


# Using logical expressions to indexing
interested_cars <- mtcars[which(mtcars$mpg > 25 & mtcars$hp>65),]
