makeCacheMatrix <- function(x = matrix()) {
  s <- NULL # Assigning s the value zero in function environement.
  set <- function(y) { #Creating a function "set". Input variable y 
    x <<- y
    s <<- NULL
  }
  get <- function() x #Creating another function "get".
  setinverse <- function(storeValue) s <<- storeValue #Wird ueber...$storeValue(...) aufgerufen. In der Klammer muessen Werte angegeben werden.
  getinverse <- function() s
  list(set = set, get = get,    #Creating a list with entries "set", "get", "setinverse" and "getinverse".
       setinverse = setinverse,
       getinverse = getinverse)
}

