#include "Rectangle.h"
#include <iostream>

MyClass::MyClass(){
}

void MyClass::run(double* X, int N, int D, double* Y){
    for (int i = 0; i < N; i++)
    {
        for (int j = 0; j < D; j++)
        {
            Y[i*D+j]=X[i*D+j] +1;
            //below raise error:subscripted value is not an array, pointer, or vector
            //Y[i][j]=X[i][j] +1;
        }
    }
}
