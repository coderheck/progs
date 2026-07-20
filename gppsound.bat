:: batch script to compile and run C++ programs that requires sound
@echo off
if %1.==. goto end
goto compile

:compile
g++ -std=c++23 -O2 -Wall -Wextra -Wl,--stack,16777216 "%1" -o "%~n1" -lwinmm && %1
del "%~n1.exe"

:end
exit /b 0
