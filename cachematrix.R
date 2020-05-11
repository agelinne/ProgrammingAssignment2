## Lexical scoping exercise for cacheing and inverting matrix

## Make a cache matrix

makeCacheMatrix <- function(x = matrix()) {
        i <- NULL
        set <- function(y){
                i <<- NULL
                x <<- y
        }
        get <- function() x
        setinverse <- function() i <<- inverse
        getinverse <- function() i
        list(set = set, get = get, setinverse = setinverse,
             getinverse = getinverse)
}


## Caches a matrix that is the inverse of x

cacheSolve <- function(x, ...) {
        i <- x$getinverse()
        if(!is.null(i)){
                message("getting cached data")
                return(i)
        }
        data <- x$get()
        i <- solve(data,...)
        i
}
