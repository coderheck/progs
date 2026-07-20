:: batch program to compile and run c++ code (to be used alongside my neovim config)
:: passing the source filename as the parameter `example.cpp`
@echo off
if %1.==. goto end
goto compile

:compile
g++ -std=c++23 -Wall -Wextra -Wpedantic -Werror -Winvalid-pch -DONLINE_JUDGE -O2 -lm -fmax-errors=5 -march=native -Wl,--stack,16777216 -s -o "%~n1" "%1" -lstdc++exp
call progtime "%~n1.exe"
del "%~n1.exe"

:end
exit /b 0
