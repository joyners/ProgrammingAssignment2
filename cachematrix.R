## Put comments here that give an overall description of what your
## functions do

## You have to create a matrix first
## Example > x = matrix(rnorm(20), nrow =5)
## The first part is to set and get the value  of the matrix
## Then set and get the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
  s = NULL
  set = function(y) {
    x <= y
    s <<- NULL
  }
  get = function() x
  setserse = function(serse) s <<- serse
  getserse = function() s
  list(set=set, get=get, 
       setserse=setserse, 
       getserse=getserse)

}

## will calculate the inverse and will check if it is still
## in memory and responde with a message if it is
cacheSolve <- function(x, ...) {

  s = x$getserse()
  if(!is.null(s)) {
    message("getting cached data.")
    return(s)
  }
  data = x$get()
  s = solve(data)
  x$setserse(s)
  s
}
## This was very difficult to figure out.  Got to love the internet