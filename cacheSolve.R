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



