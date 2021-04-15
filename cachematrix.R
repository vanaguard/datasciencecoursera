## I simply set the input x as a matrix
## and then set the solved value "s" as a null

## then I changed every reference to "mean" to "solve"

makeCacheMatrix <- function(x = matrix()) {
j <- NULL
set <- function(y){
  x <<- y
  j <<- NULL
  
}
get <- function()x
setInverse <- function(inverse)j <<- inverse
getInverse <- function()j
list(set = set, get=get,
setInverse = setInverse,
getInverse = getInverse)
}


## Same here, changed "mean" to "solve" and "m" to "s"

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

  j <- x$getInverse()
  if(!is.null(j)){
    message("getting cached data")
    return(j)
  }
  mat <- x$get()
  j <- solve(mat,...)
  x$setInverse(j)
  j}
