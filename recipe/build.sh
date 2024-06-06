#!/bin/bash

export CFLAGS="${CFLAGS} -I${PREFIX}/include/suitesparse"

$PYTHON -m pip install . --no-deps -vv
