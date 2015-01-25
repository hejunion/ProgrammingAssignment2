## This programming script provides function to create Object of Matrix and get Invese matrix of it.
## The Inverse matrix is calculated and stored as cached value of Object of matrix

## Function makeCacheMatrix 
## create an Object of matrix and provide accessor methods (set/get) of the matrix and inverse of the matrix
## Input: a matrix
## Output: Object of matrix
makeCacheMatrix <- function(x = matrix()) {
  inverse_x <- NULL
  set <- function(y){
    x<<- y
    m<<- null
  }
  get <- function(){
    x
  }
  
  setInverse <- function(ivx) inverse_x <<-ivx
  getInverse <- function() inverse_x
  
  list (set = set, get=get,
        setInverse = setInverse, getInverse = getInverse)
  
}

## Function cacheSolve 
## Get inverse of the matrix from Object of matrix created wiht above function makeCacheMatrix.
## If inverse already calculated and store to value inverse_x in Object of matrix, return value inverse_xs.
## If is null,  get its inverse by using solve() and store to value inverse_x in sObject of Matrix
##
## Input: The Object of Matrix
## Output: Inverse of the Matrix

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  inverse_x <- x$getInverses()
  
  if(!is.null(inverse_x)) {
    message("getting Inverse Matrix")
    return(inverse_x)
  }

  data <- x$get()
  inverse_x = solve(data)
   
  x$setInverse(inverse_x)

  inverse_x


}