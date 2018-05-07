# Homework 2
# Author: Student Name
# Date: 9/7/2016

# Define a function to determine the borrow time
calcu_loan <- function(){
  # Capture user input of borrower type
  repeat {
    borrower <- readline("Enter the type of borrower (Student/Faculty/Other):")
    borrower <- toupper(borrower)
    if(borrower == "STUDENT" | borrower == "FACULTY" | borrower == "OTHER")
      break
  }
  
  # Capture user input of material type
  repeat {
    material <- readline("Enter the type of materials to borrow (Book/CD):")
    material <- toupper(material)
    if(material == "BOOK" | material == "CD")
      break
  }
  
  # Print out load period for each combination of borrower type and material type
  if(borrower == "STUDENT" & material == "BOOK"){
    print("You can borrow books for 4 weeks.")
  }
  
  if(borrower == "STUDENT" & material == "CD"){
    print("You can borrow CDs for 1 week.")
  }
  
  if(borrower == "FACULTY" & material == "BOOK"){
    print("You can borrow books for 6 months.")
  }
  
  if(borrower == "FACULTY" & material == "CD"){
    print("You can borrow CDs for 2 weeks.")
  }
  
  if(borrower == "OTHER" & material == "BOOK"){
    print("You can borrow books for 2 weeks.")
  }
  
  if(borrower == "OTHER" & material == "CD"){
    print("You can borrow CDs for 1 week.")
  }
}

# Run the function
calcu_loan()
