## Put comments here that give an overall description of what your
## functions do
#cachematrix.R ---> by Nat
## Write a short comment describing this function
# makeCacheMatrix function gets matrix as inoput, set value of matrix, get value of matrix, set the inverse Matrix, and  gets inverse Matrix. 

makeCacheMatrix <- function(x = matrix()) {
invMatrix <- NULL
        setMatrix <- function(y) {
    x <<- y
    invMatrix <<- NULL
  }
        getMatrix <- function() x 
        setInverse <- function(inverse) invMatrix <<- inverse
        getInverse <- function() invMatrix  
        list(setMatrix = setMatrix, getMatrix = getMatrix,
             setInverse = setInverse, getInverse = getInverse)
}


## Write a short comment describing this function
#The function cacheSolve takes the output of the previous matrix makeCacheMatrix(matrix) as an 
# input and checks inverse matrix from makeCacheMatrix(matrix) has any value in it or not.

cacheSolve <- function(x, ...) {
        invMatrix <- x$getInverse()
         if(!is.null(invMatrix)) {  
                  message("Getting Cached Invertible Matrix") 
                  return(invMatrix) 
}
        MatrixData <- x$getMatrix() 
        invMatrix <- solve(MatrixData, ...)  
        x$setInverse(invMatrix)     
        return(invMatrix) 
        }
        
