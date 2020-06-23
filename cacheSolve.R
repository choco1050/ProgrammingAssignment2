cacheSolve <- function(a, ...) { 
        
        #calculates the inverse of the matrix. If it has been calculated before and saved in cache, then the if block is being executed. 
        #attach(cacheMatrix) can also be used instead of with function
        inv <-with(cacheMatrix, a$getinverse()) 
        if(!is.null(inv)) {
                #check whether the inverse is already stored in cache, and if so, retrieve the value from there
                message("getting cached data")
                return(inv)
        }
        data <- with(cacheMatrix, a$get()) #calculate the inverse
        s <- solve(data)
        with(cacheMatrix, a$setinverse(s)) #save that as a cache entry
        #detach(cacheMatrix) can also be used instead of with function
        s
}



