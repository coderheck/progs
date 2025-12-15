@echo off
setlocal

@REM Extract filename & extension
set "file_path=%ZED_DIRNAME%\%ZED_STEM%"
for %%F in ("%ZED_FILE%") do (
    set "extension=%%~xF"
)
@REM IMPORTANT: IF you're reading/writing from file, changing dir is
@REM            necessary for expected behavour.
cd %ZED_DIRNAME%

echo [compiling and running file: %ZED_FILENAME% (%file_path%)]

if /I "%extension%" == ".cpp" (
    REM g++ -std=c++23 -Wall -DONLINE_JUDGE -O2 -lm -fmax-errors=5 -march=native -Wl,--stack,16777216,-s -o "%file_path%" "%ZED_FILE%" -lstdc++exp && "%file_path%.exe"
	gpp %file_path%
) else if /I "%extension%" == ".py" (
    python "%ZED_FILE%"
) else if /I "%extension%" == ".c" (
    gcc "%ZED_FILE%" -o "%file_path%" && "%file_path%.exe"
) else if /I "%extension%" == ".js" (
    node "%ZED_FILE%"
) else if /I "%extension%" == ".ts" (
    if exist "%ZED_WORKTREE_ROOT%\node_modules\.bin\tsc.exe" (
        %ZED_WORKTREE_ROOT%\node_modules\.bin\tsc.exe "%ZED_FILE%" && node "%file_path%.js"
    ) else (
        tsc "%ZED_FILE%" && node "%file_path%.js"
    )
) else (
    echo [run configuaration not found for this file type]
)

endlocal
