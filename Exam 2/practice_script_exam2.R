#Scratch work
# Split strings 
strsplit("abcdef", NULL) 

rm(list = ls())
#Imputation
x<-c(1,2,3,4,NA,5,6,NA,12,13)
library(magrittr)
x<-x %>% dplyr::recode(.missing = mean(.,na.rm = TRUE))

# Format: strsplit(x, split) 
strsplit("a.b.c.d.e.f", "[.]") 

# split argument is a regular expression 
strsplit("a.b.c.d.e.f", ".", fixed = TRUE) 

# Use exact matching 
strsplit("12 23   14 21 56 78 99  "," ") 
strsplit("12 23   14 21 56 78 99  ","[[:blank:]]+")
strsplit("A B 1 2"," ")

# Match blank one or more times 
unlist(strsplit("12 23   14 21 56 78 99  ","[[:blank:]]+")) # To get a vector

#Testing Length()
library(magrittr)
"abc 123 " %>% trimws %>% length


bet <- " abc def ghi jkl mno p"
bet %>% trimws() %>% print()
bet %>% trimws() %>% nchar()

s1<-"gsub#uses#regular#expressions"
s1 <-gsub(pattern = "\\#", replacement = ".", s1) %>% print()

cyl <-mtcars$cyl
unique_cyl <-unique(cyl)
unique_cyl_sorted <-sort(unique_cyl, decreasing = TRUE)
print(unique_cyl_sorted)

mtcars$cyl %>% unique() %>% sort(,decreasing=TRUE) %>% print

mtcars$cyl %>% unique() %>% sort(decreasing = T) %>% print()

car <- rownames(mtcars) 

tolower(car) # Translate to lower case 

toupper(car) # Translate to upper case 

nchar(car) # Count the number of characters

# Trim whitespace [ \t\r\n] (space, horizontal tab, line feed, carriage return)
trimws("\n  Hello R! \t \r \n   ") 
# Reverse strings 
stringi::stri_reverse("abcdef")
# Pattern matching and replacement 
sub("a","1", "abcabcabc") 
# replace the first match 
gsub("a","1", "abcabcabc") # replace all matches 
gsub("[[:digit:]]","", "a1b2c3ef4gh55") # Remove all digits
# Substrings 
substr("abcdef", 2, 5) # Syntax: substr(x, start, stop) 
substring("abcdef", 2, 5) # Syntax: substring(text, first, last = 1000000L) 
substring("abcdef", 1, 1:6) 
substring("abcdef", 1:6, 1:6)

# Split strings 
strsplit("abcdef", NULL) # Format: strsplit(x, split) 
strsplit("a.b.c.d.e.f", "[.]") # split argument is a regular expression 
strsplit("a.b.c.d.e.f", ".", fixed = TRUE) # Use exact matching 
strsplit("12 23   14 21 56 78 99  "," ") 
strsplit("12 23   14 21 56 78 99  ","[[:blank:]]+") # Match blank one or more times 
unlist(strsplit("12 23   14 21 56 78 99  ","[[:blank:]]+")) # To get a vector
# Concatenate 
paste("abc","123",sep = "") 
paste("abc","123",sep = ",") # paste0(...) is equivalent to paste(..., sep = ""), slightly more efficiently. 
paste0("abc","123")


# Read the dataset we collected from https://nrf.com/2015/top100-table 
df <- read.csv("top100retailers2015.csv") 

# Show the structure of the dataset 
str(df) 
# All variables except the first two are factor data (i.e., nominal scale) 
summary(df) 
# Cannot get summary statistics such as min, max etc. for nominal data
df$RetailSales2014 <- df$RetailSales2014 %>% gsub(",","",.) %>% gsub("$","",.,fixed =TRUE) %>% as.character() %>% as.numeric()
# Show the structure of the new variable 
str(df$RetailSales2014) 
# Get summary statistics of the new variable 
summary(df$RetailSales2014)

mtcars <- mtcars

# Sort by mpg (ascending) 
dplyr::arrange(mtcars,mpg) 

# Sort by cyl (ascending) and hp (ascending) 
dplyr::arrange(mtcars,cyl,hp) 

# Sort by cyl (ascending) and hp (descending) 
dplyr::arrange(mtcars,cyl,desc(hp))

# Use subset() function to select both observations and variables 
car11 <- subset(mtcars, select = c("mpg","wt")) 

# Select mpg and wt variables names(car11) 
car12 <- subset(mtcars, select = c(1,6)) 
names(car12) 
car13 <- subset(mtcars, select = mpg:wt) 

# Select all variables between mpg and wt names(car13)
car14 <- subset(mtcars,mpg >= 25,select = c(mpg,wt)) 

car16 <- mtcars %>% filter(mpg >= 25) %>% select(c(mpg, wt))

library(dplyr)

# Select mpg and wt variables with mpg >= 25 car14 
car15 <- subset(mtcars,cyl == 6,select = c(1:6)) 
# Select 1st through 6th variables with cyl == 6 car15




#Making a DF
name<-c("Mike","Sarah","Helen","Helen")
course<-c("IST3420","IST5001","IST3420","IST5002")
score<-c(80,70,90,80)
stu_course<-data.frame(name,course,score)
stu_course %>% dplyr::group_by(course) %>% dplyr::summarize(max(score))
