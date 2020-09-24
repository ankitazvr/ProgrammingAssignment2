## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
# Creating a matrix, which is a list of functions to get the value of the matrix, set the value of the matrix, 
# set the inverse of the matrix, and get the inverse of the matrix
makecachematrix <- function(x = matrix()){
  inverse_mat <- NULL
  set <- function(y){
    x <<- y
    inverse_mat <<- NULL
  }
  get <- function() x
  
  setinv <- function(solve) inverse_mat <<- solve
  getinv <- function() inverse_mat
  list(set=set, get=get, setinv = setinv, getinv = getinv)
}


## Write a short comment describing this function
# Calculating the inverse of the matrix created using the above function

cachesolve <- function(x,...){
  inverse_mat <- x$getinv()
  if (!is.null(inverse_mat)){
    message("Getting cached data")
    return(inverse_mat)
  }
  data <- x$get()
  inverse_mat <- solve(data)
  x$setinv(inverse_mat)
  inverse_mat
}


