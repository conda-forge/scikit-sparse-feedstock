@echo on

REM Make sure setup.py can find the SuiteSparse headers and libraries
set "SUITESPARSE_INCLUDE_DIR=%LIBRARY_PREFIX%\include\suitesparse"
set "SUITESPARSE_LIBRARY_DIR=%LIBRARY_PREFIX%\lib"

REM Match the Unix recipe compiler/linker hints
set "CL=/I%LIBRARY_PREFIX%\include /I%LIBRARY_PREFIX%\include\suitesparse %CL%"
set "LINK=/LIBPATH:%LIBRARY_PREFIX%\lib %LINK%"

%PYTHON% -m pip install . -vv --no-deps --no-build-isolation
