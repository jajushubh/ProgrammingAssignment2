## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x= matrix()){
        a <- NULL
        #set the matrix
        set <- function(y){
                x <<- y
                m <<- NULL
        }
        get <- function()x
        #set the inverse
        setinverse <- function(inverse) a <<- inverse
        getinverse <- function() a
        #add them to a list
        list(set=set,get=get,setinverse=setinverse,getinverse=getinverse)
}

cacheSolve <- function(x,...){
        #obtain the stored value
        a <- x$getinverse()
        #check whether the stored value is null or not
        if(!is.null(a)){
                message("get cached data")
                return(a)
        }
        #find inverse
        data <- x$get()
        a <- solve(data,...)
        x$setinverse(a)
        a
}