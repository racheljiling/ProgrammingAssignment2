## The role of this function

## A function that makes functions

makeCacheMatrix <- function(x = matrix()) {
        s <- NULL               ## Define
        set <- function(y) {
        x <- y
        s <<- NULL
        }
        get <- function() x ## Get value of x
        setsolve <- function(solve) s <<- solve
        getsolve <- function() s
        list(set = set, get = get,
        setsolve = setsolve,
        getsolve = getsolve)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
