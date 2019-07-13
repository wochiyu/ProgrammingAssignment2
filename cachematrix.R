##Thank for your comments
## functions do

## the frist function is used to store “special matrix”

makeCacheMatrix <- function(x = matrix()) {
                Inv <- NULL
                set <- function(y) {
                        x <<- y
                        Inv <<- NULL
                }
                get <- function() x
                setInverse <- function(Inverse) Inv <<- Inverse
                getInverse <- function() Inv
                list(set = set, get = get,
                     setInverse = setInverse,
                     getInverse = getInverse)
}


## the scenod function dose two things. 1. Determine if a special matrix alreay exists； 2. if not，calculate the inverse of matrix and save it 

cacheSolve <- function(x, ...) {
                Inv <- x$getInverse()
                if(!is.null(Inv)) {
                        message("getting cached data")
                        return(Inv)
                }
                data <- x$get()
                Inv <- mean(data, ...)
                x$setInverse(Inv)
                Inv
}
