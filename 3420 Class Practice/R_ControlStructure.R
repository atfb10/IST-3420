##############################################################
# R CONTROL STRUCTURES                                       #
##############################################################

# Statement
x <- 0; x + 5  # Use either ";" or new line to seperate statements

y <- c(1,2,3,
       4,5,6)
# The new line is ignored,as the statement is not syntactically complete
y

# Block
b = {a <- 0
  a + 5}
b


# Selection
is_even <- function(x)
{
  if(x%%2==0)
  {
    return(TRUE)
  }
}


is_even(24)
is_even(23)
is_even(10.5)

is.even2 <- function(x){
  if(x%%2==0){
    return(TRUE)
  } else{
    return(FALSE)
  }
}

is.even2(24)
is.even2(23)
is.even2(10.5)


score_grade(-1)

score_grade <- function(score)
{
  if(score >= 90) return("A")
  else if (score >= 80) return("B")
    else if (score >= 70) return("C")
      else if (score >= 60) return("D")
        else return("F")
}

score_grade(99)
score_grade(90.1)
score_grade(89.9)
score_grade(70.1)
score_grade(68.6)
score_grade(57)


# Looping

score_v <- sample(50:100, 100, replace=T)  # Generate random scores for 100 students
print(score_v)

# Use for loop
grade_v <- NULL  # Initiate a grade vector
for (i in 1:100)
  grade_v[i] = score_grade(score_v[i])
print(grade_v)  # Show the grades calculated


# Use while loop
grade_v <- NULL
i <- 1
while (i <= 100){
  grade_v[i] = score_grade(score_v[i])
  i <- i + 1
}
print(grade_v)  # Show the grades calculated


# Read a line from the terminal (in interactive use)
z <- readline("Please input the value of z?")
z  # Type of z is character
class(z)
# Read a numeric value from the terminal
w <- as.numeric(readline("Please input the value of w?"))
w
class(w)  # Type of w is numeric

# Handle some bad input values
score2grade_v2 <- function(score){
  while(score < 0 | score > 100){
    score <- as.numeric(readline("Input score (between 0 and 100)?"))
  }
  if(score >= 90) return("A")
  else if (score >=80) return("B")
       else if (score >= 70) return("C")
            else if (score >= 60) return("D")
                 else return("F")
}

score2grade_v2(-1)
score2grade_v2(87)
score2grade_v2(200)

# Another way is to wrap the original score2grade function
score2grade_v3 <- function(score){
  while(score < 0 | score > 100){
    score <- as.numeric(readline("Input score (between 0 and 100)?"))
  }
  score2grade(score)
}

score2grade_v3(-1)
score2grade_v3(87)
score2grade_v3(200)

# Use repeat loop
grade_v <- NULL
i <- 1
repeat {
  grade_v[i] = score_grade(score_v[i])
  i <- i + 1
  if (i == 101) break
}
print(grade_v)  # Show the grades calculated


# Break Demo
breakdemo <- function(){
  sum <- 0
  i <- 0
  while(i < 20){
    i <- i +1
    if (sum >= 100)
      break
    sum <- sum + i
  }
  cat("The i is",i,"\n")
  cat("The sum is",sum,"\n")
}

breakdemo()

# Next Demo
nextdemo <- function(){
  sum <- 0
  i <- 0
  while(i < 20){
    i <- i +1
    if (i == 10 | i ==11)
      next
    sum <- sum + i
  }
  cat("The i is",i,"\n")
  cat("The sum is",sum,"\n")
}

nextdemo()

# Messages
sign2 <- function(x){
  if(is.numeric(x)){
    if (x>0){
      return(1);
    }
    if (x==0){
      warning("Input is zero!")
      return(NaN)
    } else {
      return(-1)
    }
    
  } else{
    stop("Input number be a number!")
  }
}

sign2("a")
sign2(-23)
sign2(0)
sign2(10.5)
sign2(TRUE)


message("Hello there!")



# Debug
factorial <- function(n=3){
  if (n%%1!=0 || n<0){
    stop("Input must be an integer larger than zero!")
  }
  if (n==0){
    return(1)
  } else{
    return(n*factorial(n-1))
  }
}

factorial(0)
factorial(1)
factorial(2)
factorial(3)
factorial()  # Use default argument value
factorial(10)
factorial(0.5)
factorial(-2)

debug(factorial)  # Use debug() to set the debugging flag on a function
factorial(4)
isdebugged(factorial)  # Check the debugging flag
undebug(factorial)  # Use undebug() to unset the debugging flag
isdebugged(factorial)  # Check the debugging flag

debugonce(factorial)
factorial(4)