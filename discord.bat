:: batch script to open discord from commandline or the run window (Win + R)
@echo off
setlocal EnableDelayedExpansion
set LookDir=%localappdata%\Discord
for /d %%d in (%LookDir%\*) do (
	for %%z in ("%%d\*.exe") do (
		REM echo %%d %%z
		if /I %%~nxz==Discord.exe (
			REM echo %%d %%z 
			echo [found executable: %%d\%%z]
			cd %%d && start %%z
			exit /b
		)
	)
)
REM where /r %LookDir% "discord.exe" | clip
REM if errorlevel 1 (
REM 	echo [code 1: discord executable not found]
REM ) else (
REM 	echo [code 0: found discord executable]
REM )
