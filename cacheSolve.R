cacheSolve <- function(x, ...) {
  s <- x$getinverse() # Assigning s the value which is stored in "getinverse".
  print(s)
  if(!is.null(s)) { # If "s" is not equal to zero, "getinverse" contains the value of the inverse matrix. There is no need to calculate the inverse again.  
    message("getting cached data")
    return(s)
  }
  data <- x$get() # If "s" is equal to zero, the inverse has not been calculated. Assigning "data" the matrix which is stored in "get".
  s <- solve(data, ...) #Calculation the inverse and storing it in "s".
  x$setinverse(s) # Calling the function setinverse which stores the inverse in the list in function makeCacheMatrix.
  s
}