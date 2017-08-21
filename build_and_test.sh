#!/bin/bash
python setup.py build_ext --inplace
python -c "import ndtest;a=ndtest.PyRectangle(1,2,3,4);print(a.getArea())"
