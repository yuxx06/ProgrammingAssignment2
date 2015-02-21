makeCacheMatrix <- function(x = numeric()) {
        m <- NULL
        setMatrix <- function(y) {
                x <<- y
                m <<- NULL
        }
        getMatrix <- function() x
        setInverse <- function(solve) m <<- solve
        getInverse <- function() m
        list(setInverse = setInverse, getInverse = getInverse,
             setMatrix = setMatrix,
             getMatrix = getMatrix)
}
