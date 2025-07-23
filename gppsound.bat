@echo off
set ext=.cpp
if %1.==. goto end
goto compile

:compile
g++ -std=c++23 -O2 -Wall -Wextra %1%ext% -o %1 -lwinmm && %1

:end
echo:

:: g++ -std=c++23 -O2 -Wall -Wextra _runanim.cpp -o _runanim -lwinmm && _runanim
