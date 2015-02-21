makeCacheMatrix <- function(x = numeric()) {
        # cached value is initially set to NULL
        m <- NULL
        # store a matrix
        setMatrix <- function(y) {
                x <<- y
                m <<- NULL
        }
        # return the stored matrix
        getMatrix <- function() x
        # cache the argument
        setInverse <- function(solve) m <<- solve
        # get the inverse matrix 
        getInverse <- function() m
        # return list which can call the corresponding matrix
        list(setInverse = setInverse, getInverse = getInverse,
             setMatrix = setMatrix,
             getMatrix = getMatrix)
}
