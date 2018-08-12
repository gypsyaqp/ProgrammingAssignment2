
## jj
##the first function creates the list with the fucntion to set and get the value of the matrix and it's inverse

makeCacheMatrix <- function(x = matrix()) {
mx <- NULL
  set <- function(y) {
    x <<- y
    mx <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) mx <<- inverse
  getinverse <- function() mx
  list(set = set,
       get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## retrieve the inverse from the cache

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        mx <- x$getinverse()
  if (!is.null(mx)) {
    message("getting cached data")
    return(mx)
  }
  data <- x$get()
  mx <- solve(data, ...)
  x$setinverse(mx)
  mx
}
