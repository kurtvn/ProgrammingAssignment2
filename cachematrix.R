## Put comments here that give an overall description of what your
## functions do

## makeCacheMatrix: This function creates a special "matrix" object that can cache its inverse.

##ls()
##rm(list=ls())

makeCacheMatrix <- function(x = matrix()) {
	##cache the inverse matrix as a 'global' by using the <<- assignment
	inv_matrix <<- solve(x)

	inv_matrix
}

##test 1
c=rbind(c(1, -1/4), c(-1/4, 1))  
c
makeCacheMatrix(c)
inv_matrix

## cacheSolve : This function computes the inverse of the special "matrix" 
## returned by  makeCacheMatrix  above. If the inverse has already been 
## calculated (and the matrix has not changed), 
## then  cacheSolve  should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
	## If the inverse has already been calculated (and the matrix has not changed)
       if(!is.null(inv_matrix)) {
            message("getting cached data")
  		## then  cacheSolve should retrieve the inverse from the cache.
		z <- inv_matrix
	}
	else 
	{
		z <-solve(x)
	}

	## Return a matrix that is the inverse of 'x'
	z
}



##test2: should return inv_matrix
##           [,1]      [,2]
##	[1,] 1.0666667 0.2666667
##	[2,] 0.2666667 1.0666667

cacheSolve(c)

