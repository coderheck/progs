:: batch script to compile and run C++ programs that requires sound
@echo off
set ext=.cpp
if %1.==. goto end
goto compile

:compile
g++ -std=c++23 -O2 -Wall -Wextra -Wl,--stack,16777216 %1%ext% -o %1 -lwinmm && %1

:end
echo:

