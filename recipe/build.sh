#!/bin/bash

export CFLAGS="${CFLAGS} -I${PREFIX}/include -I${PREFIX}/include/suitesparse"
export LDFLAGS="${LDFLAGS} -L${PREFIX}/lib"
export SUITESPARSE_INCLUDE_DIR="${PREFIX}/include/suitesparse"
export SUITESPARSE_LIBRARY_DIR="${PREFIX}/lib"

$PYTHON -m pip install . -vv --no-deps --no-build-isolation
