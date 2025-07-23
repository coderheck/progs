# batch program to compile and run c++ code (to be used alongside my neovim config)
@echo off
set ext=.cpp
if %1.==. goto end
goto compile

:compile
g++ -std=c++23 -Wall -DONLINE_JUDGE -O2 -lm -fmax-errors=5 -march=native -Wl,--stack,16777216 -s -o %1 %1%ext% && %1

:end
echo:
