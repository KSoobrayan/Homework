
## Similar to the example supplied in the instructions the first function below 
## stores a matrix in a special object. 
## It sets the value of the matrix then gets the value of the matrix

makeCacheMatrix <- function(x = matrix()) {

  i <- NULL
  set <- function(k) {
    x <<- k
    i <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) i <<- inverse
  getinverse <- function() i
  list(set = set,
       get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}

## The function below here caches the inverse of the matrix. 
## It sets the value of the inverse and then gets the value. 
  cacheSolve <- function(x, ...) {
    i <- x$getinverse()
    if (!is.null(i)) {
      message("getting cached data")
      return(i)
    }
    data <- x$get()
    i <- solve(data, ...)
    x$setinverse(i)
    i}
        

