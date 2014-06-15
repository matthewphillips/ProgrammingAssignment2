## Put comments here that give an overall description of what your
## functions do

## A matrix object that stores its value and is able to cache it's inverse
makeCacheMatrix <- function(mat = matrix()) {
    i <- NULL
    # A function that sets a new matrix object and resets the cache
    set <- function(y) {
        mat <<- y
        i <<- NULL
    }
    # A function to retrieve the matrix from the object
    get <- function() mat
    # A function to set the inverse value in the cache
    setinv <- function(inverse) i <<- inverse
    # A function to return the inverse from the cache
    getinv <- function() i
    # An internal object to hold the defined functions
    list(set = set, get = get,
         setinv = setinv,
         getinv = getinv)
}


## Returns the inverse of a makeCacheMatrix object
cacheSolve <- function(x, ...) {
    i <- x$getinv()
    #if the inverse is cached, return that value
    if(!is.null(i)) {
        message("getting cached data")
        return(i)
    }
    #if not, calculate, cache, and return the inverse
    data <- x$get()
    i <- solve(data, ...)
    x$setinv(i)
    i
}
