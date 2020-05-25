## getting inverse of a matrix

## writng a function to inverse the matrix

makeCacheMatrix <- function(x = matrix()){
  inv <- NULL
  set <- function(y){
    x <<- y
    inv <- NULL
  }
  get <- function(){
    x
  }
  setInverse <- function(inverse){
    inv <<- inverse
  }
  getInverse <- function(){
    inv
  }
  list(set = set,
       get = get,
       setInverse = setInverse,
       getInverse = getInverse)

}


## calculating cache data

cacheSolve <- function(x, ...) {
  inv <- x$getInverse()
  if(!is.null(m)){
    message("getting cached data")
    return(inv)
    
  }
  data <- x$get()
  inv <- inverse(data, ...)
  x$setInverse(inv)
  inv
  
        
}
