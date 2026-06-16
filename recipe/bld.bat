set "SUITESPARSE_INCLUDE_DIR=%LIBRARY_PREFIX%\include\suitesparse"
set "SUITESPARSE_LIBRARY_DIR=%LIBRARY_PREFIX%\lib"

set "INCLUDE=%LIBRARY_PREFIX%\include;%LIBRARY_PREFIX%\include\suitesparse;%INCLUDE%"
set "LIB=%LIBRARY_PREFIX%\lib;%LIB%"

%PYTHON% -m pip install . -vv --no-deps --no-build-isolation
