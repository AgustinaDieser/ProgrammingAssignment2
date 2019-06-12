## Put comments here that give an overall description of what your
## functions do These functions creates a matrix and its inverse.

## Write a short comment describing this function
The first function called makeCacheMatrix creates a list ( a special vector that containes object from different clases).
One of those it a function that gets a matrix as an input and is able to set and get the value of the vector and also 
set and get the value of the mean.


makeVector <- function(x = numeric()) {               #This first part creates the Matrix 
        m <- NULL
        
                                       
               set <- function(y) {                   #The value of the matrix is setted. 
                x <<- y
                m <<- NULL
        }
        
        
        get <- function() x                          #Get the value of the Matrix
        setmean <- function(mean) m <<- mean.        #set the value of the mean
        getmean <- function() m                      #get the value of the mean
        list(set = set, get = get,
             setmean = setmean,
             getmean = getmean)
}


## Write a short comment describing this function
The se ond function, cacheSolve, takes the output of the previous matrix makeCacheMatrix(matrix) as an 
input and checks inverse matrix from makeCacheMatrix(matrix) has any value in it or not. In case inverse matrix from 
makeCacheMatrix((matrix) is empty, it gets the original matrix data from and set the invertible  matrix by using the 
solve function. In case inverse matrix from makeCacheMatrix((matrix) has some value in it, it returns a message 
"Getting Cached Invertible Matrix" and the cached object.

cachemean <- function(x, ...) {
        m <- x$getmean()
        if(!is.null(m)) {                           #if inverse matrix is not NULL
                message("getting cached data").     #Type message: Getting Cached Invertible Matrix
                return(m)                           #return the invertible matrix
        }
        data <- x$get()                             
        m <- mean(data, ...)
        x$setmean(m)
        m
}

                                                            
                                                            
                                                            #Test:
                                                            
> Testmatrix <-  matrix(1:9, 3,3)
     [,1] [,2] [,3]
[1,]    1    3    5
[2,]    2    4    6
> 
> cachematrix <- makeCacheMatrix(Testmatrix)
> cachematrix$getMatrix()
     [,1] [,2] [,3]
[1,]    1    4    7
[2,]    2    5    8
[3,]    3    6    9
> cachematrix$getInverse()
NULL
> 
> cacheSolve(Cachematrix)



                                                            
                                                            
