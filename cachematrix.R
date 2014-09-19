## The role of this function is to creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(m = matrix()) {
        s <- NULL               ## Define the inverse property
        set <- function(matrix) {
        m <<- matrix
        s <<- NULL
        }
        ## Get value of inverse matrix x
        get <- function(){
                m
        }
        ## Set the inverse of matrix
        setInverse <- function(inverse) { 
                s <<- inverse 
        }
        ## Get the inverse of matrix
        getInverse <- function() {
                s  
        }
        ## Return list that stores functions
        list(set = set, get = get,
        setInverse = setInverse,
        getInverse = getInverse)
}


## This function computes the inverse of the matrix if it hasn't already been calculated

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- i$getInverse()
       ## If it already contains inverse data, do not compute and just return
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        ## Get matrix from object
        data <- x$get()
        m <- solve(data, ...) #use solve to compute the inverse of a square matrix
        x$setInverse(m)
        m
}

