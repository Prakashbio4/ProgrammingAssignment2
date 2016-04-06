
## Caching the Inverse of a Matrix
## Below are a pair of functions that are used to create a special object that stores a matrix and catches its Inverse

## Creating a special matrix that will do the below activities
##   - set the value of the matrix
##   - get the value of the matrix
##   - set the value of the inverse matrix
##   - get the value of the inverse matrix

makeCacheMatrix <- function(x = matrix()) {
inverse <- NULL
set <- function(y) {
x <<- y
inverse <<- NULL
}
get <- function() x
setInverse <- function(inverse) inverse <<- inverse
getInverse <- function() inverse
list(set = set,
     get = get,
     setInverse = setInverse,
     getInverse = getInverse)

## Calculate the inverse of the special "matrix" created with the above
## function, reusing cached result if it is available

cacheSolve <- function(x, ...){
inverse <- x$getInverse()
if (!is.null(inverse)) {
message("getting cached data")
return(inverse)
}
matrix <- x$get()
inverse <- solve(mat,...)
x$setInverse(inverse)
inverse
}

