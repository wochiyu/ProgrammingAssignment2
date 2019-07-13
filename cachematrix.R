##Thank for your comments
## functions do

## the frist function is used to store “special matrix”

makeCacheMatrix <- function(x=matrix()){
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setsolve <- function(solve) s <<- solve
        getsolve <- function() s
        list(set = set, get = get,
             setsolve = setsolve,
             getsolve = getsolve)
}


## the scenod function dose two things. 1. Determine if a special matrix alreay exists； 2. if not，calculate the inverse of matrix and save it 

cacheSolve <- function(x, ...){
        s <- x$getsolve()
        if(!is.null(s)) {
                message("getting cached data")
                return(s)
        }
        data <- x$get()
        s <-solve(data, ...)
        x$setsolve(s)
        s
}
