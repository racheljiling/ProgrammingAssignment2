## The role of this function is to creates a special "matrix" object that can cache its inverse.

## A function that makes functions

makeCacheMatrix <- function(x = matrix()) {
        s <- NULL               ## Define the value that stores inverse value
        set <- function(y) {
        x <- y
        s <<- NULL
        }
        get <- function() x ## Get value of x
        setsolve <- function(solve) s <<- solve
        getsolve <- function() s  ## Get the inverse
        list(set = set, get = get,
        setsolve = setsolve,
        getsolve = getsolve)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        s <- x$getx()
        if(!is.null(m)) {
                message("getting cached data")
                return(s)
        }
        data <- x$getx()
        s <- solve(data, ...) #use solve to compute the inverse of a square matrix
        x$setmean(s)
        s
}

