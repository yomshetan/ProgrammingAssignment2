# makeCacheMatrix creates a list containing a function to
# 1- set the value of the matrix
# 2- get the value of the matrix
# 3- set the value of inverse of the matrix
# 4- get the value of inverse of the matrix
makeCacheMatrix <- function(x = matrix()) {
  invmat <- NULL
  set <- function(y) {
    x <<- y
    invmat <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) invmat <<- inversemat
  getinverse <- function() invmat
  list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}


# Inverse of the matrix. 
# if the inverse is already in cache : no computation
# if not : it computes the inverse and sets the value in cache

cacheSolve <- function(x, ...) {
  invmat <- x$getinverse()
  if(!is.null(invmat)) {
    message("getting cached data.")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data)
  x$setinverse(inv)
  inv
}