#calculates the inverse of a matrix. If it was already been calculated and stored in cache, the if block is being executed, and the previous value retrieved. In other cases, the inverse is being calculated from scratch. 


cacheSolve <- function(a, ...) {
        #attach(cacheMatrix)
        inv <-with(cacheMatrix, a$getinverse())
        if(!is.null(inv)) {
                message("getting cached data")
                return(inv)
        }
        data <- with(cacheMatrix, a$get())
        s <- solve(data)
        with(cacheMatrix, a$setinverse(s))
        #detach(cacheMatrix)
        s
}



