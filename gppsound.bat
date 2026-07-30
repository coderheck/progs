:: batch script to compile and run C++ programs that requires sound
@echo off
if %1.==. goto end
goto compile

:compile
cd "%~dp1"
g++ -std=c++23 -O2 -Wall -Wextra -Wl,--stack,16777216 "%1" -o "%~dpn1" -lwinmm
call progtime "%~dpn1.exe"
del "%~dpn1.exe"

:end
exit /b 0
