## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x= matrix()){
        a <- NULL
        set <- function(y){
                x <<- y
                m <<- NULL
        }
        get <- function()x
        setinverse <- function(inverse) a <<- inverse
        getinverse <- function() a
        list(set=set,get=get,setinverse=setinverse,getinverse=getinverse)
}

cacheSolve <- function(x,...){
        a <- x$getinverse()
        if(!is.null(a)){
                message("get cached data")
                return(a)
        }
        data <- x$get()
        a <- solve(data,...)
        x$setinverse(a)
        a
}