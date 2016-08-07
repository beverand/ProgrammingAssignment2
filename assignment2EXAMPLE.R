plusFunctions <- function() {
 plustwo <- function(y){
  x <-y+2
  return(x)
 }
 
 plusthree <- function(y){
   x <- y +3
   return(x)
 }
 
 list(plustwo =plustwo, plusthree = plusthree)
}

## Vector object that has 4 accessor functions

makeVector <- function(x = numeric()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setmean <- function(mean) m <<- mean
  getmean <- function() m
  list(set = set, get = get,
       setmean = setmean,
       getmean = getmean)
}


## this function verifies that the mean value exists and returns it

cachemean <- function(x, ...) {
  m <- x$getmean()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- mean(data, ...)
  x$setmean(m)
  m
}


