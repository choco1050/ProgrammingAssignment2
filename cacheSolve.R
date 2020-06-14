cacheSolve <- function(a, ...) { #calculates the inverse of the matrix. If it has been calculated before and saved in cache, then the if block is being executed. 
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



