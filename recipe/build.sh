#!/bin/bash

idir=$PWD
cd core/
make all
cd $idir

# TODO: implement in the recipe for OSX later.
# pip install delocate
# delocate-listdeps dist/*.whl && delocate-wheel -v dist/*.whl

${PYTHON} setup.py build_ext --inplace
${PYTHON} -m pip install . --no-deps -vv
