# Name: Adam Forestier
# Class: IST 3420
# Assingment: Homework 2
# Due Date: September3, 2017

# Clear data and values
rm(list = ls())

# Lengths of times people are permitted to rent books/cds
rent_time <- c("4 weeks.", "1 week.", "6 months.", "2 weeks.", "2 weeks.", "1 week.")

# Creates Matrix from rent_time data
rent_matrix <- matrix(rent_time, ncol = 2, byrow = TRUE)

# Renames row names and columns
rownames(rent_matrix) <- c("Student", "Teacher", "Other")
colnames(rent_matrix) <- c("Book", "CD")

# Displays matrix with information
rent_matrix

# Allows user to enter 
borrower_type <- ""
rented_item <- ""


while (borrower_type != "student" && borrower_type != "faculty" && borrower_type != "other")
{
  borrower_type <- readline("Enter the type of borrower (Student/Faculty/Other): ")
  
  # Allows user to enter borrower type with upper or lower case first letter
    borrower_type <- tolower(borrower_type)
}

while(rented_item != "book" && rented_item != "cd")
{
  rented_item <- readline("Enter the type of materials to borrow (Book/CD) ")
  
  # Allows user to enter borrower type with upper or lower case first letter
  rented_item <- tolower(rented_item)
  }

item_columns <- switch(rented_item, "book" = 1, "cd" = 2)
borrower_rows <- switch(borrower_type, "student" = 1, "faculty" = 2, "other" = 3)
print(paste("You can borrow a", rented_item, "for", rent_matrix[borrower_rows, item_columns]))


