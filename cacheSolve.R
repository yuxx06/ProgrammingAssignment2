cacheSolve <- function(x, ...) {
        # get inverse matrix 
        m <- x$getInverse()
        # if it is already cached, return the value
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        # otherwise recalculate it and store the inverse matrix into the cache
        data <- x$getMatrix()
        m <- solve(data)
        x$setInverse(m)
        m
}
