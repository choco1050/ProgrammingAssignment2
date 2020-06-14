#Creates a special matrix object that is being stored in cache, together with its calculated inverse.


makeCacheMatrix <- function(x = numeric(), y = numeric()) {
        
        s <- NULL
        set <- function(a,b) {
                x <<- a
                y <<- b
                s <<- NULL
                
        }
        bd <- rbind(x,y)
        m <- as.matrix(bd)
        #df <- as.data.frame(bd)
        get <- function() m
        setinverse <- function(solve) s <<- solve
        getinverse <- function() s
        cacheMatrix <- list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
        
        
        
        
        
        
        
}
