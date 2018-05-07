# Name: Adam Forestier
# Class: IST 3420
# Assignment: Homework 2
# Date: September 17, 2017

# Package that reads HTML Table
install.packages("rvest")
library(rvest)

# Sets url to variable url
url <- "https://nrf.com/2015/top100-table"

# Reads HTML File and makes a table with data
read_retail <- read_html(url)
retail_table <- html_table(read_retail, fill = TRUE)[[1]]

# Converts Table to Data Frame
retailer_df <- as.data.frame(retail_table)
retailer_df

# Shows attributes of data frame
attributes(retailer_df)

# Shows data structure of data frame
str(retailer_df)

# Renames data frame columns
names(retailer_df) <- c("Rank", "Company", "Headquarter", "RetailSales2014", "USASalesGrowth",
                 "WorldwideRetailSales", "USAPercentageofWorldwideSales", "Stores2014", "Growth")

# Shows summary of data frame
summary(retailer_df)

# Saves data frame as a CSV file 
write.csv(retailer_df, file = "top100retailers2015.csv")
