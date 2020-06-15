## the functions created below helps to cahce the inverse value of matrix.

## Itis done so that calculations need not be performed again and again thus saving time. 

## the first function creates a matrix where the inverse of the matrix can be stored

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setmean <- function(mean) m <<- mean
  getmean <- function() m
  list(set = set, get = get,
       setmean = setmean,
       getmean = getmean)
}


## this is the function where actual calculation takes place.
## It first looks up if the matrix's inverse has been already calculated and stored in cache.
## If yes then it brings that stored value , otherwise it calculates the inverse.

cacheSolve <- function(z, ...) {
  solved<- z$getmatrix()
  if(!is.null(solved)) {
    message("getting cached data")
    return(solved)
  }
  data<- z$get()
  solved<- solve(data)
  z$setmatrix(solved)
  solved
}
a<- makeCacheMatrix(matrix(c(1:4), nrow = 2))
cacheSolve(a)

