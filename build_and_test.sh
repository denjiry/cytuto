#!/bin/bash
python setup.py build_ext --inplace
#python -c "import ndtest;import numpy;a=ndtest.MyClass();print(a.run(numpy.arange(9).reshape((3,3)) ) )"
python -c "import ndtest;import numpy;print(ndtest.run(numpy.arange(9,dtype=numpy.float64).reshape((3,3)) ) )"
