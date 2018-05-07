abc <- function(x = 0){
  if(x%%3==0){
    return(TRUE)
  } else {
    return(FALSE)
  }
}
abc(6)
abc()
abc(4)

rm(y)

y <- {x<-0; x; x+2}
y