#!/bin/bash

idir=$PWD
cd core/
make all
cd $idir

${PYTHON} setup.py build_ext --inplace
${PYTHON} -m pip install . --no-deps -vv
