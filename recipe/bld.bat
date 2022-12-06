set "SUITESPARSE_INCLUDE_DIR=%LIBRARY_PREFIX%\include\suitesparse"
set "SUITESPARSE_LIBRARY_DIR=%LIBRARY_PREFIX%\lib"

%PYTHON% -m pip install . --no-deps -vv --ignore-requires-python