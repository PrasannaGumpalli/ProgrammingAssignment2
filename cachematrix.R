## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  matrixinverse<-NULL
  set<-function(y){
    x<<-y
    matrixinverse<<-NULL
  }
  get<-function() x
  setInverse<-function(inverse) matrixinverse<<-inverse
  getInverse<-function()matrixinverse
  list(set=set,get=get,setInverse=setInverse,getInverse=getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  matrixinverse <- x$getInverse()
  if(!is.null(matrixinverse)){
    message("getting the cached data")
    return(matrixinverse)
  }
  data1 <- x$get()
  m <- solve(data1)
  x$setInverse(m)
  m
        ## Return a matrix that is the inverse of 'x'
}
