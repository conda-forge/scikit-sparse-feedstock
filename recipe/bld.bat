@echo on

REM Make sure setup.py can find the SuiteSparse headers and libraries
set "SUITESPARSE_INCLUDE_DIR=%LIBRARY_PREFIX%\include\suitesparse"
set "SUITESPARSE_LIBRARY_DIR=%LIBRARY_PREFIX%\lib"

REM Match the Unix recipe compiler/linker hints
set "CFLAGS=%CFLAGS% -I%LIBRARY_PREFIX%\include -I%LIBRARY_PREFIX%\include\suitesparse"
set "LDFLAGS=%LDFLAGS% -L%LIBRARY_PREFIX%\lib"

%PYTHON% -m pip install . -vv --no-deps --no-build-isolation
