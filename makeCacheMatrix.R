makeCacheMatrix <- function(x = numeric(), y = numeric()) { 
        
        #Creates a special matrix object that is being stored in cache, together with its calculated inverse.
        #First, a matrix out of two numeric vectors is created. Because of the possible
        #multidimensionality of vectors, the matrix can be more than just 2*2. 
        #The function takes two matrix rows as vectors and saves those as a matrix in cache
        
        s <- NULL #this is the potential inverse matrix variable, by default set to zero. S is shorter than writing "solution". 
        
        set <- function(a,b) {
                x <<- a
                y <<- b
                s <<- NULL
                
        }
        bd <- rbind(x,y)
        m <- as.matrix(bd) #matrix is bound out of two vectors here
        #df <- as.data.frame(bd)
        get <- function() m
        setinverse <- function(solve) s <<- solve #inverse functions are defined here
        getinverse <- function() s
        cacheMatrix <- list(set = set, get = get, setinverse = setinverse, getinverse = getinverse) 
        #set a cache entry together with the inverse
        
        
        
        
}
