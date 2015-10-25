## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  invrs <- NULL
  set <- function(y) {
    x <<- y
    invrs <<- NULL
  }
  get <- function() x
  setinvrserse <- function(invrserse) invrs <<- invrserse
  getinvrserse <- function() invrs
  list(set = set,
       get = get,
       setinvrserse = setinvrserse,
       getinvrserse = getinvrserse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the invrserse of 'x'
  invrs <- x$getinvrserse()
  if (!is.null(invrs)) {
    message("getting cached data")
    return(invrs)
  }
  mat <- x$get()
  invrs <- solve(mat, ...)
  x$setinvrserse(invrs)
  invrs
}
