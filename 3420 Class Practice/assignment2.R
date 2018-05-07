# Homework 2 - IST 3420
# Lorenzo Lewis

# Clear variables at launch
rm(list = ls())

# Set variables
loanPeriod <- c("4 weeks.", "1 week.",
                "6 monthes.", "2 weeks.",
                "2 weeks.", "1 week.")
dataMatrix <- matrix(loanPeriod, ncol = 2, byrow = TRUE)
borrowerType <- ""
materialType <- ""

dataMatrix

# Check borrowerType
while (borrowerType != "student" && borrowerType != "faculty" && borrowerType != "other"){
  borrowerType <- readline("Enter the type of borrower (Student/Faculty/Other): ")
  borrowerType <- tolower(borrowerType)
}
# Check materialType
while (materialType != "cd" && materialType != "book"){
  materialType <- readline("Enter the type of materials to borrow (Book/CD): ")
  materialType <- tolower(materialType)
}
borrowerRow <- switch(borrowerType, "student" = 1, "faculty" = 2, "other" = 3)
materialCol <- switch(materialType, "book" = 1, "cd" = 2)
print(paste("You can borrow a", materialType, "for",dataMatrix[borrowerRow,materialCol]))