## So I am inverting the matrix, and storing it in the list


## 2 functions are described to temp hold values
##which are then called to assign values to the list

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() {
    x
  }
  setinverse <- function(inverse) {
    inv <<- inverse
  }
  getinverse <- function() inv
  list( set = set, get = get, 
        setinverse = setinverse,
        getinverse = getinverse)
}


## This function calculates the inverse, and sends it...
##... for storing

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  inv <- x$getinverse()
  if(!is.null(inv)) {
    print("getting cached data")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data, ...)
  x$setmean(inv)
  inv
}
