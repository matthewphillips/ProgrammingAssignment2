### makeCacheMatrix and cacheSolve functions

This is a matrix object that caches its inverse when the 
cacheSolve function is called with a makeCacheMatrix object as its
argument.

The makeCacheMatrix objects stores a matrix, potentially that matrix's
inverse, plus getter and setter methods for the matrix and it's inverse.
To retrieve the original matrix the 'object-name'$get() must be called.
Also, one can reset the original matrix in the object with the
'object-name'$set(some_matrix).  This will wipe the cache as expected.

However, while the inverse can be retrieved through the
'object-name'$getinv(), it can also be easily retrieved by
passing the object to the cacheSolve function.

The object can have its inverse manually set with the 
'object-name'$setinv('inverse-of-the-matrix'), but the 
cacheSolve('object-name') function will automatically solve if
necessary and save the value to the cache or retrieve it from
the cache if it has already been saved.
This object is best used if a particular matrix must have
its inverse solved often.
