## functions that cache the inverse of a matrix

## creates a matrix that can cache its inverse
makeCacheMatrix <- function(m = matrix()) {
  i<-NULL
  set<-function(matrix){
    m<<-martix
    i<<-NULL
  }
  get<-function(){
    m
  }
  setInverse<-function(inverse){
    i<<-inverse
  }
  getInverse<-function(){
    i
  }
  list(set=set,get=get,
       setInverse=setInverse,
       getInverse=getInverse)
}


## compute the inverse of the special matrix returned by "makeCacheMatrix"
cacheSolve <- function(x, ...) {
  m<-x$getInverse()
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
  data<-x$get()
  m<-solve(data)%*%data
  x$setInverse(m)
  m
}

    
