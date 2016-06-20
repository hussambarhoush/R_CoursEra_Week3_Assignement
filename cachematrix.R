makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinverse <- solve(inv) m <<- inv
  getinverse <- function() m
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}

  

cachemean <- function(x, ...) {
  m <- getmean()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- get()
  m <- mean(data, ...)
  x$setmean(m)
  m
}