:: batch program to compile and run c++ code (to be used alongside my neovim config)
:: passing the full path to source file as the parameter `C:\deadass\dawg\example.cpp`
@echo off
if %1.==. goto end
goto compile

:compile
cd "%~dp1"
g++ -std=c++23 -Wall -Wextra -Wpedantic -Werror -Winvalid-pch -DONLINE_JUDGE -O2 -lm -fmax-errors=5 -march=native -Wl,--stack,16777216 -s -o "%~dpn1" "%1" -lstdc++exp
call progtime "%~dpn1.exe"
del "%~dpn1.exe"

:end
exit /b 0
