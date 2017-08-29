cimport numpy as np
import numpy as np

cdef extern from "Rectangle.h":
    cdef cppclass MyClass:
        MyClass() except +
        void run(double* X, int N, int D, double* Y)

def run(np.ndarray[np.double_t, ndim=2] X):
    X = np.ascontiguousarray(X)
    cdef np.ndarray[np.double_t, ndim=2, mode="c"] Y = np.zeros_like(X)

    cdef MyClass myclass
    myclass = MyClass()
    myclass.run(&X[0,0], X.shape[0], X.shape[1], &Y[0,0])

    return Y