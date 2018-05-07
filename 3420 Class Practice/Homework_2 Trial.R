# Installs read excel file package
install.packages("readxl")
library("readxl")

# Shows requirements in table form
Homework_2_table

# Changes name of table to loan_period
loan_period <- Homework_2_table

# Transforms table to a data frame
as.data.frame.matrix(loan_period)

Student <- loan_period[1:2,]
Student


