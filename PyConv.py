import numpy as np
import timeit as ti
import scipy.signal as ssig

a = np.array ([3,5,7,11,13,17])
b = np.array ([-1, 0, 2])
print(np.convolve(a,b))

# what 3b1b did: 
arr1 = np.random.random(100000) #100k random values
arr2 = np.random.random(100000) #100k random values

Tnorm = ti.timeit(lambda: np.convolve(arr1, arr2), number = 1 )
print(Tnorm)

Tfast = ti.timeit(lambda: ssig.fftconvolve(arr1, arr2), number = 1 )
print(Tfast)


