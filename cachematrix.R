## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  m<-NULL
  set <- function(y){
    x<<-y
    m<<-NULL
  }
  get<-function() x
  set_matrix<-function(solve) m<<- solve
  get_matrix<-function() m
  list(set=set, get=get,
       set_matrix=set_matrix,
       get_matrix=get_matrix)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  m<- x$get_matrix()
  if(!is.null(m)){
    message("Getting cached data")
    return(m)
  }
  matrix <- x$get()
  m<-solve(matrix, ...)
  x$set_matrix(m)
  m
}
