# Adam Forestier
# September 15, 2017

library(RCurl)
library(XML)


url <- "https://en.wikipedia.org/wiki/List_of_countries_and_dependencies_by_population"

url_table <- getURL(url)

print(substr(url_table, 300))

